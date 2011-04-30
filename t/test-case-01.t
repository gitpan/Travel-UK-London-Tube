#!perl

use Test::More tests => 1;

use Travel::UK::London::Tube;
my $tube  = Travel::UK::London::Tube->new();
my @route = $tube->get_shortest_route('Vauxhall', 'Euston');
my @expected = ('Vauxhall',
                'Pimlico',
                'Victoria',
                'Green Park',
                'Oxford Circus',
                'Warren Street',
                'Euston');
ok(eq_array(\@route, \@expected));