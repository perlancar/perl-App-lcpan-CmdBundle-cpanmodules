package App::lcpan::CmdBundle::cpanmodules;

# DATE
# VERSION

1;
# ABSTRACT: lcpan subcommands related to Acme::CPANModules

=head1 SYNOPSIS

Install this distribution, then the lcpan subcommands below will be available:

 # List Acme::CPANModules modules available on CPAN
 % lcpan cpanmodules-mods


=head1 DESCRIPTION

This distribution packages several lcpan subcommands related to
L<Acme::CPANModules>. More subcommands will be added in future releases.

Some ideas:

B<cpanmodules-stats>. Number of modules/lists. We might also want to know the
total number of entries, average number of entries per list, total number of
mentioned modules, the most mentioned modules, and so on.


=head1 SEE ALSO

L<lcpan>

L<Acme::CPANModules> and L<cpanmodules>
