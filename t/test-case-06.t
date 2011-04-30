#!perl

use Test::More tests => 1;

use Travel::UK::London::Tube;
my $tube  = Travel::UK::London::Tube->new();
my @route = $tube->get_shortest_route('Turnham Green', 'Whitechapel');
my @expected = ('Turnham Green',
                'Hammersmith',
                'Barons Court',
                'West Kensington',
                'Earl\'s Court',
                'Gloucester Road',
                'South Kensington',
                'Sloane Square',
                'Victoria',
                'Green Park',
                'Westminster',
                'Waterloo',
                'Bank',
                'Liverpool Street',
                'Bethnal Green',
                'Mile End',
                'Stepney Green',
                'Whitechapel');
ok(eq_array(\@route, \@expected));