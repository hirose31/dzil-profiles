use strict;
use Test::More;

BEGIN { use_ok '{{ (my $mod = $dist->name) =~ s/-/::/g; $mod }}' }

done_testing;
