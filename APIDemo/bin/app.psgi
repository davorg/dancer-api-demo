#!/usr/bin/perl

use strict;
use warnings;
use FindBin;
use lib "$FindBin::Bin/../lib";
use lib "$FindBin::Bin/../local/lib/perl5";


# use this block if you don't need middleware, and only have a single target Dancer app to run here
use APIDemo;

APIDemo->to_app;

=begin comment
# use this block if you want to include middleware such as Plack::Middleware::Deflater

use APIDemo;
use Plack::Builder;

builder {
    enable 'Deflater';
    APIDemo->to_app;
}

=end comment

=cut

=begin comment
# use this block if you want to mount several applications on different path

use APIDemo;
use APIDemo_admin;

use Plack::Builder;

builder {
    mount '/'      => APIDemo->to_app;
    mount '/admin'      => APIDemo_admin->to_app;
}

=end comment

=cut

