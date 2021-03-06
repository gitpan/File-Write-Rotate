
# This file was automatically generated by Dist::Zilla::Plugin::MakeMaker v5.025.
use strict;
use warnings;

use 5.010001;

use ExtUtils::MakeMaker;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Write to files that archive/rotate themselves",
  "AUTHOR" => "perlancar <perlancar\@cpan.org>",
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => 0
  },
  "DISTNAME" => "File-Write-Rotate",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "MIN_PERL_VERSION" => "5.010001",
  "NAME" => "File::Write::Rotate",
  "PREREQ_PM" => {
    "File::Flock::Retry" => 0,
    "Proc::PID::File" => 0,
    "Taint::Runtime" => "0.03"
  },
  "TEST_REQUIRES" => {
    "File::Slurp::Tiny" => 0,
    "File::Spec" => 0,
    "File::chdir" => 0,
    "IO::Handle" => 0,
    "IPC::Open3" => 0,
    "Monkey::Patch::Action" => 0,
    "Test::Exception" => "0.31",
    "Test::More" => "0.98",
    "Test::Warnings" => "0.014",
    "tainting" => "0.01"
  },
  "VERSION" => "0.25",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


my %FallbackPrereqs = (
  "ExtUtils::MakeMaker" => 0,
  "File::Flock::Retry" => 0,
  "File::Slurp::Tiny" => 0,
  "File::Spec" => 0,
  "File::chdir" => 0,
  "IO::Handle" => 0,
  "IPC::Open3" => 0,
  "Monkey::Patch::Action" => 0,
  "Proc::PID::File" => 0,
  "Taint::Runtime" => "0.03",
  "Test::Exception" => "0.31",
  "Test::More" => "0.98",
  "Test::Warnings" => "0.014",
  "tainting" => "0.01"
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



