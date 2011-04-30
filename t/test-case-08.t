#!perl

use Test::More tests => 1;

use Travel::UK::London::Tube;
my $tube  = Travel::UK::London::Tube->new();
my @route = $tube->get_shortest_route('Wembley Central', 'Marleybone');
my @expected = ('Wembley Central',
                'Stonebridge Park',
                'Harlesden',
                'Willesdon Junction',
                'Shepherd\'s Bush',
                'Holland Park',
                'Notting Hill Gate',
                'Bayswater',
                'Edgware Road',
                'Marleybone');
ok(eq_array(\@route, \@expected));