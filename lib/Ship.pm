#!/usr/bin/perl

package Ship;

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

		stages		=>		[],

	};


	bless $self, $class;

	$self->init();

	return $self;
}


##
# Initialize (load stages, etc)
#
# PLEASE OVERRIDE IN CHILD CLASSES
#
# @throws die if problem
sub init {

	my $self=shift;

	die("This method has not been implemented\n");

}



##
# Control ourself
# 
# Operate stages, etc as programmed
# @param t flight time
sub control {

	my $self=shift;
	my $t=shift

}

##
# Simulate time passage
# 
# Handle internal simulation processed (decrement fuel, etc)
# @param delta_t time passage
sub simulate {

	my $self=shift;
	my $delta_t=shift;

	# Call stage simulations
	foreach my $stage (@{$self->stages}) {

		$stage->simulate($delta_t);
	}

}


##
# Mass
#
# @retval current mass in kg
sub mass {

	my $self=shift;

	my $mass=0;
	foreach my $stage (@{$self->stages}) {

		$mass+=$stage->mass();
	}

	return $mass;
}

##
# Drag
#
# @retval current drag vector
sub drag {

	my $self=shift;

	return V(0,0,0);

}


1;