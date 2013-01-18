#!perl

use strict;
use warnings;

use Test::More (tests => 3);

use Pinto::Util;
use Path::Class;
#-------------------------------------------------------------------------------

# TODO: Pinto::Util has moved into the Pinto-Common distribution.  These
# tests probably need to be moved over there, if they already aren't.

#-------------------------------------------------------------------------------

my $author = 'joseph';
my $expect = dir( qw(J JO JOSEPH) );

is(Pinto::Util::author_dir($author), $expect, 'Author dir path for joseph');

#-------------------------------------------------------------------------------

$author = 'JO';
$expect = dir( qw(J JO JO) );

is(Pinto::Util::author_dir($author), $expect, 'Author dir path for JO');

#-------------------------------------------------------------------------------

$author = 'Mike';
my @base = qw(a b);
$expect = dir( qw(a b M MI MIKE) );


is(Pinto::Util::author_dir(@base, $author), $expect, 'Author dir with base');

#-------------------------------------------------------------------------------
