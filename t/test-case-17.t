#!perl

use Test::More tests => 1;

use Travel::UK::London::Tube;
my $tube  = Travel::UK::London::Tube->new();
my @route = $tube->get_shortest_route('Hoxton', 'Gospel Oak');
my @expected = ('Hoxton',
                'Haggerston',
                'Dalston Junction',
                'Dalston Kingsland',
                'Canonbury',
                'Highbury & Islington',
                'Caledonian Road & Barnsbury',
                'Camden Road',
                'Kentish Town West',
                'Gospel Oak');
ok(eq_array(\@route, \@expected));