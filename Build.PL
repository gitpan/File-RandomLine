use Module::Build;
# See perldoc Module::Build for details of how this works

Module::Build->new
    ( module_name     => 'File::RandomLine',
      create_makefile_pl => 'passthrough',
      create_readme => 1,
      license         => 'perl',
	  requires        => {
          perl => 5.006,
          Want => 0.08,
      },
	  build_requires  => { 
          File::Spec => 0.87,
          Test::Exception => 0.19,
          Test::MockRandom => 0.93,
          Test::More => 0.53,
          Test::Warn => 0.08,
      },
	)->create_build_script;
