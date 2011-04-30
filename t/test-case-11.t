#!perl

use Test::More tests => 1;

use Travel::UK::London::Tube;
my $tube  = Travel::UK::London::Tube->new();
my @route = $tube->get_shortest_route('Oval', 'Euston');
my @expected = ('Oval',
                'Kennington',
                'Waterloo',
                'Westminster',
                'Green Park',
                'Oxford Circus',
                'Warren Street',
                'Euston');
ok(eq_array(\@route, \@expected));