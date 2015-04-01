use strict;
use warnings;

use Test::More;
use Test::More 0.94;
use Test::CleanNamespaces 0.15;

use Test::Requires { 'MooseX::Types' => '0.42' };

subtest all_namespaces_clean => sub {
    namespaces_clean(
        grep { my $mod = $_; not grep { $mod =~ $_ } qr/^MooseX::Types::Structured$/ }
            Test::CleanNamespaces->find_modules
    );
};

done_testing;
