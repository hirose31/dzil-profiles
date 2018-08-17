use strict;
use Test::More;

use FindBin;
use lib "$FindBin::Bin/..";

use t::Util;

require {{ (my $mod = $dist->name) =~ s/-/::/g; $mod }};
{{ (my $mod = $dist->name) =~ s/-/::/g; $mod }}->import;
note("new");
my $obj = new_ok("{{ (my $mod = $dist->name) =~ s/-/::/g; $mod }}");

# diag explain $obj

done_testing;
