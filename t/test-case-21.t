#!perl

use Test::More tests => 4;

use Travel::UK::London::Tube;
my ($tube, @route, @expected);
$tube     = Travel::UK::London::Tube->new();
@expected = ('Westferry',
             'Limehouse',
             'Shadwell',
             'Monument',
             'Cannon Street');

@route = $tube->get_shortest_route('Westferry', 'Cannon        Street');
ok(eq_array(\@route, \@expected));

@route = $tube->get_shortest_route('    Westferry', 'Cannon        Street');
ok(eq_array(\@route, \@expected));

@route = $tube->get_shortest_route('Westferry    ', 'Cannon        Street');
ok(eq_array(\@route, \@expected));

@route = $tube->get_shortest_route('    Westferry    ', 'Cannon        Street');
ok(eq_array(\@route, \@expected));