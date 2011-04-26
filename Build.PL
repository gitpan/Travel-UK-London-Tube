use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    sign                => 1,
    module_name         => 'Travel::UK::London::Tube',
    license             => 'perl',
    dist_author         => q{Mohammad S Anwar <mohammad.anwar@yahoo.com>},
    dist_version_from   =>  'lib/Travel/UK/London/Tube.pm',
    add_to_cleanup      => [ 'Travel-UK-London-Tube-*' ],    
    build_requires      => {
        'Test::More'    => 0,
        'Readonly'      => 0,
        'Module::Build' => 0.36,
        'Time::HiRes'   => 0,
    },
);

$builder->create_build_script();
