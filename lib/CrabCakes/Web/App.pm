package CrabCakes::Web::App;
use Dancer2;
use Dancer::Exception;

use CrabCakes::Game;
use Try::Tiny;
use strict;

set show_errors => 0;

our $VERSION = '0.1';

get '/' => sub {
    template 'index';
};

get '/new_game' => sub {
   return CrabCakes::Game->new()->to_json;
};

get '/new_three_player_game' => sub {
   return CrabCakes::Game->new( game_size => 3 )->to_json;
};

post '/move_crabcake/:player/:crabcake/:card' => sub {
   my $game = var 'game';
   my $player = $game->get_player_by_counter(params->{player});
   $player->card_to_crab_cake( params->{card}, params->{crabcake});
   return $game->to_json;
};

post '/set_player_ready/:player' => sub {
   my $game = var 'game';
   my $player = $game->get_player_by_counter ( params->{player} );
   $player->is_ready(1);
   return $game->to_json;
};

post '/draw_card/:player' => sub {
   my $game = var 'game';
   #try {
   $game->take_turn(player_number => params->{player} );
   #} catch {
   #  $DB::single=1;
   #  die $_->message();
   #};
   return $game->to_json;
};

post '/play_card/:player/:card' => sub {
   my $game = var 'game';
   $game->take_turn(player_number => params->{player},
      card_name => params->{card} );
   return $game->to_json;
};

post '/pickup_discards/:player' => sub {
   my $game = var 'game';
   $game->take_turn(player_number => params->{player},discards => 1 );
   return $game->to_json;
};

post '/finish_turn/:player' => sub {
   my $game = var 'game';
   $game->take_turn(player_number => params->{player} );
   return $game->to_json;
};

post '/error_generator' => sub { 
   my $game = var 'game';
   $game->make_error();
   return $game->to_json;
};


#400 handler
# if the game throws we should end up here
# it should have and errors stack on the message too.

hook init_error => sub {
my $error = shift;
};


hook before_error=> sub {
my $game = var 'game';
my $error = shift;
};


hook after_error=> sub {
   my $game = var 'game';
   my $response = shift;
   if ( $game->error_count ) {
     $response->content($game->to_json); 
     $response->status(400);
   }  
};


hook on_route_exception=> sub {
   my ($app,$error) = @_;
   my $o;
};

#404 handler
any qr{.*} => sub {
    status 'not_found';
    return '{ Error : "Page Not Found" }'; 
};

#store the json into a game object when we have it
hook before => sub {
  my $route = shift;
  var (game => CrabCakes::Game->new( json => params->{json} )) if ( params->{json} );
};

hook after => sub {
  my $response = shift;
  #$response->content_type('text/json; charset=UTF=8');
  $response->content_type('application/json; charset=UTF-8');
};


true;
