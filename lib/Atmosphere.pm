#!/usr/bin/perl

package Atmosphere;

use strict;
use warnings;
use Math::Vector::Real;

##
# Constructor
# 
sub new {

	# Parameters
	my $class=shift;
	my $options=shift;

	# Our data
	my $self= {

	};


	bless $self, $class;

	return $self;
}





1;
