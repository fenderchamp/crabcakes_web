package CrabCakes::Web::App;
use Dancer2;
use Dancer::Exception;

use CrabCakes::Game;
use strict;


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
   $game->take_turn(player_number => params->{player} );
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
$DB::single=1;
my $error = shift;
my $i;
};
hook before_error=> sub {
$DB::single=1;
my $error = shift;
my $b;
};
hook after_error=> sub {
$DB::single=1;
my $reponse = shift;
my $a;
};
hook on_route_exception=> sub {
$DB::single=1;
my ($app,$error) = @_;
my $o;
};

#404 handler
any qr{.*} => sub {
    status 'not_found';
    return '{ Error => "Page Not Found" }'; 
};


#store the json into a game object when we have it
hook before => sub {
  my $route = shift;
  var (game => CrabCakes::Game->new( json => params->{json} )) if ( params->{json} );
};


true;
