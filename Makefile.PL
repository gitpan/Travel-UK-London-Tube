use ExtUtils::MakeMaker;

WriteMakefile
(
    'NAME'         => 'Travel::UK::London::Tube',
    'VERSION_FROM' => 'lib/Travel/UK/London/Tube.pm',
    'clean'        => { FILES => 'Travel-UK-London-Tube-*' },
    'PREREQ_PM'    => {
        'Module::Build' => '0.36',
        'Readonly'      => '0',
        'Test::More'    => '0',
        'Time::HiRes'   => '0'
    }
);