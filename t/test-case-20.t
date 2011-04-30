#!perl

use Test::More tests => 2;

use Travel::UK::London::Tube;

my ($tube, $mappings);
my (@expected, @route);

$tube     = Travel::UK::London::Tube->new();
$mappings = { 1 => [2],
              2 => [1,3,5],
              3 => [2,4],
              4 => [5,3],
              5 => [2,4]};
$tube->set_node_mappings($mappings);
@route = $tube->get_shortest_route(1, 5);
@expected = (1,2,5);
ok(eq_array(\@route, \@expected));

$mappings = { 'A' => ['B'],
              'B' => ['A','C','E'],
              'C' => ['B','D'],
              'D' => ['E','C'],
              'E' => ['B','D']};
$tube->set_node_mappings($mappings);
@route = $tube->get_shortest_route('A', 'E');
@expected = ('A','B','E');
ok(eq_array(\@route, \@expected));