use strict;
use warnings;

use CrabCakes::Web::App;
use Test::More;
use Plack::Test;
use HTTP::Request::Common;
use Test::CrabCakes::Web::Game;
use CrabCakes::Game;


my $app = CrabCakes::Web::App->to_app;
is( ref $app, 'CODE', 'Got app' );

#setup

my $test = Plack::Test->create($app);

my $test_game = Test::CrabCakes::Web::Game->new();

my $game = CrabCakes::Game->new(json => $test_game->new_game);

is($game->starting_player,'PlayersNotReady', 'nobody can start yet');

my $res  = $test->request( POST '/error_generator', [ json => $game->to_json ] );
#my $res  = $test->request( POST '/draw_card/1', [ json => $game->to_json ] );
$DB::single=1;

#$game = CrabCakes::Game->new(json => $res->content);

#my $player = $game->get_player_by_counter(1);
#
#is($player->hand->size,5,'picked up a card');
#is($game->deck->size,($deck_size - 1), 'lost up a card');
#
##play card
#
#$res  = $test->request( POST '/play_card/1/3S', [ json => $game->to_json ] );
#$game = CrabCakes::Game->new(json => $res->content);
#
#my $player = $game->get_player_by_counter(1);
#is($player->hand->size,4,'played up a card');
#is($game->discards->size,1, 'one on the discards pile');
#
#$res  = $test->request( POST '/finish_turn/1', [ json => $game->to_json ] );
#$game = CrabCakes::Game->new(json => $res->content);
#
#is($game->player_whos_turn_it_is,0,'0 goes now');

done_testing();
