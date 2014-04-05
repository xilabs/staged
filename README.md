staged
======

Rsim 2 - with staging

Simulate a staged ascent vechicle

### Components

* Ship.pm - a ship
* Stage.pm - a stage
* Atmosphere.pm - atmospheric model

One ship contains one or more stages.    Each Ship is given an opportunity to control() itself, wherein it performs various duties (steering, staging, etc).
Each Ship also has a simulate() function that is passed a delta time.  In simulation mode, the Ship should decrement mass, etc when simulate() is called.

Any value that is shared externally -- e.g., mass etc -- must be in the form of a getter (member function)! Only internal parameters are actually variables.

