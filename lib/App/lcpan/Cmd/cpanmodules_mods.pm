package App::lcpan::Cmd::cpanmodules_mods;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

require App::lcpan;

our %SPEC;

$SPEC{handle_cmd} = {
    v => 1.1,
    summary => 'List Acme::CPANModules modules available on CPAN',
    args => {
        %App::lcpan::common_args,
        %App::lcpan::query_multi_args,
        %App::lcpan::fauthor_args,
        %App::lcpan::fdist_args,
        %App::lcpan::flatest_args,
        %App::lcpan::sort_modules_args,
    },
};
sub handle_cmd {
    my %args = @_;

    my $res = App::lcpan::modules(%args, namespaces=>['Acme::CPANModules']);

    # remove Acme::CPANModules itself
    if ($args{detail}) {
        $res->[2] = [grep {$_->{module} ne 'Acme::CPANModules'} @{$res->[2]}];
    } else {
        $res->[2] = [grep {$_ ne 'Acme::CPANModules'} @{$res->[2]}];
    }

    for (@{$res->[2]}) {
        if ($args{detail}) {
            $_->{name} =~ s/^Acme::CPANModules:://;
        } else {
            s/^Acme::CPANModules:://;
        }
    }

    $res;
}

1;
# ABSTRACT:
