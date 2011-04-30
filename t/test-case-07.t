#!perl

use Test::More tests => 1;

use Travel::UK::London::Tube;
my $tube  = Travel::UK::London::Tube->new();
my @route = $tube->get_shortest_route('Goldhawk Road', 'Wembley Central');
my @expected = ('Goldhawk Road',
                'Shepherd\'s Bush Market',
                'Wood Lane',
                'White City',
                'Shepherd\'s Bush',
                'Willesdon Junction',
                'Harlesden',
                'Stonebridge Park',
                'Wembley Central');
ok(eq_array(\@route, \@expected));