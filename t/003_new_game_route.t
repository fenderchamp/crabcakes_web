use strict;
use warnings;

use CrabCakes::Web::App;
use Test::More;
use Plack::Test;
use HTTP::Request::Common;

my $app = CrabCakes::Web::App->to_app;
is( ref $app, 'CODE', 'Got app' );

my $test = Plack::Test->create($app);
my $res  = $test->request( GET '/new_game' );
ok( $res->is_success, '[GET /] successful' );

$res  = $test->request( GET '/new_three_player_game' );
ok( $res->is_success, '[GET /] successful' );

done_testing();
