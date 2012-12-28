
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "File::Slurp" => 0,
    "File::chdir" => 0,
    "Module::Build" => "0.3601",
    "Monkey::Patch::Action" => 0,
    "Test::More" => "0.98",
    "tainting" => "0.01"
  },
  "configure_requires" => {
    "Module::Build" => "0.3601"
  },
  "dist_abstract" => "Write to files that archive/rotate themselves",
  "dist_author" => [
    "Steven Haryanto <stevenharyanto\@gmail.com>"
  ],
  "dist_name" => "File-Write-Rotate",
  "dist_version" => "0.09",
  "license" => "perl",
  "module_name" => "File::Write::Rotate",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "File::Which" => 0,
    "Proc::PID::File" => 0,
    "SHARYANTO::File::Flock" => "0.31",
    "Taint::Runtime" => "0.03",
    "perl" => "5.010001"
  },
  "script_files" => []
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
