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

my $res  = $test->request( POST '/move_crabcake/0/3/2C', [ json => $test_game->new_game] );

ok( $res->is_success, '[POST /] successful' );

my $game = CrabCakes::Game->new(json => $res->content);
is($game->get_player_by_counter(0)->get_crab_cake(3)->top_card->abbreviation,'2C','crabcake moved');

done_testing();


exit;
