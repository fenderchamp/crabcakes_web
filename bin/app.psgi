#!/usr/bin/env perl

use strict;
use warnings;
use FindBin;
use lib "$FindBin::Bin/../lib";

use CrabCakes::Web::App;
CrabCakes::Web::App->to_app;
