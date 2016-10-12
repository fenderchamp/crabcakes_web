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

my $test = Plack::Test->create($app);

my $test_game = Test::CrabCakes::Web::Game->new();

my $game = CrabCakes::Game->new(json => $test_game->new_game);
is($game->starting_player,'PlayersNotReady', 'nobody can start yet');
my $res  = $test->request( POST '/set_player_ready/0', [ json => $test_game->new_game ] );
$res  = $test->request( POST '/set_player_ready/1', [ json => $res->content ] );
$game = CrabCakes::Game->new(json => $res->content);
isnt($game->starting_player,'PlayersNotReady', 'somebody can start now');


done_testing();


exit;
