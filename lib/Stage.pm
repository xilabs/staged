#!/usr/bin/perl

package Stage;

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

		active			=>		0,		# bool
		isp				=>		0,		# specific impulse
		mass_fuel		=>		0,		# kg
		mass_oxidizer	=>		0,		# kg
		mass_structure	=>		0,		# kg
		engine			=>		{
			throttle		=>		0,		# [0..1]
		},
	};


	bless $self, $class;

	$self->init();

	return $self;
}


##
# Initialize 
#
# PLEASE OVERRIDE IN CHILD CLASSES
#
# @throws die if problem
sub init {

	my $self=shift;

	die("This method has not been implemented\n");

}


##
# Mass
#
# @retval current mass in kg
sub mass {

	my $self=shift;

	return $self->{mass_fuel} + $self->{mass_oxidizer} + $self->{mass_structure};
}




##
# Simulate time passage
# 
# Handle internal simulation processed (decrement fuel, etc)
# @param delta_t time passage
sub simulate {

	my $self=shift;
	my $delta_t=shift;


}






1;




