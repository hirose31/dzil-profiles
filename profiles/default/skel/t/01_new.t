use strict;
use Test::More;

require {{ (my $mod = $dist->name) =~ s/-/::/g; $mod }};
{{ (my $mod = $dist->name) =~ s/-/::/g; $mod }}->import;
note("new");
my $obj = new_ok("{{ (my $mod = $dist->name) =~ s/-/::/g; $mod }}");

# diag explain $obj

done_testing;
