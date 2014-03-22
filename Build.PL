use Module::Build;
my $build = Module::Build->new(
    dist_abstract      => 'change characters with diacritics into their base character',
    dist_name          => 'Text-Undiacritic',
    dist_version       => '0.02',
    module_name        => 'Text::Undiacritic',
    license            => 'artistic',
    create_makefile_pl => 'traditional',
    requires           => {
        version             => 0,
        Exporter            => 0,
        charnames           => 0,
        Unicode::Normalize  => 0,
    },

    build_requires => {
        Test::Exception     => 0,
        Test::More          => 0,
        Test::Pod           => 0,
        Test::Pod::Coverage => 0,
        File::Basename      => 0,
        File::Find          => 0,
        English             => 0,
    },
    recursive_test_files => 1,
    meta_add => {
        no_index => {
            namespace => 'Text::Undiacritic',
        },
    }
);

$build->create_build_script;
