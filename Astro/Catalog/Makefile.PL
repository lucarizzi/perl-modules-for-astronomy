use ExtUtils::MakeMaker;
use Data::Dumper;

my $cfg_directory = '$(PERLPREFIX)/etc';
my $cfg_to_install = "sss.cfg skycat.cfg";

WriteMakefile( 
               'NAME'           => 'Astro::Catalog',
	       'VERSION'        => '4.0.1',
               'EXE_FILES'      => [ ],
               'PREREQ_PM'      => { 'LWP'                 => 5.53,
                                     'Net::Domain'         => 2.13,
                                     'Pod::Usage'          => 1.14,
                                     'Astro::Coords'       => 0.07,
                                     'File::Spec'          => 0.84,
                                     'Test::More'          => 0.47,
                                     'Astro::Telescope'    => 0.50,
                                     'Astro::SLA'          => 0.96,
                                     'Time::Piece'         => 1.08,
                                     'SOAP::Lite'          => 0.00,
                                     'Test'                => 1.24,
                                     'Carp'                => 1.01,
                                     'Data::Dumper'        => 2.12,
                                     'Astro::VO::VOTable'  => 0.01,
                                     'Scalar::Util'        => 1.14,
                                     'Astro::FITS::CFITSIO'=> 1.03,
                                     'File::Temp'          => 0.14,
                                     'Class::Struct'       => 0.63,
				     'Number::Uncertainty' => 0.01,
				     'Misc::Quality'       => 0.01,
				     'Astro::Flux'         => 0.01
	                           },
	       'dist'           => { COMPRESS => "gzip -9f"},
	       ($] >= 5.005 ?    ## Add these new keywords supported since 5.005
	       ( ABSTRACT       => 'A generic astronomical catalogue class',
		 AUTHOR         => 'Alasdair Allan <aa@astro.ex.ac.uk>') : ()),
             );

package MY;

sub install {
  my $self = shift;
  my $inherited = $self->SUPER::install (@_);

  $inherited =~ s/^(install :: .*)$/$1 inst_cfg/gm;
  $inherited;
}


sub test {
  my $self = shift;
  my $inherited = $self->SUPER::test (@_);

  #$inherited =~ s/^TEST_VERBOSE=0$/TEST_VERBOSE=1/gm;
  $inherited;
}

# configuration files
sub postamble {

qq{
CFG_FILES	= $cfg_to_install
CFG_DIR		= $cfg_directory

} . q {
inst_cfg: all
	mkdir -p $(CFG_DIR)
	for file in $(CFG_FILES) ; do \
	  $(CP) etc/$$file $(CFG_DIR)/$$file; \
	done
}; }
