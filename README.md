# policydweight puppet module

[![Build Status](https://travis-ci.org/cirrax/puppet-policydweight.svg?branch=master)](https://travis-ci.org/cirrax/puppet-policydweight)
[![Puppet Forge](https://img.shields.io/puppetforge/v/cirrax/policydweight.svg?style=flat-square)](https://forge.puppetlabs.com/cirrax/policydweight)
[![Puppet Forge](https://img.shields.io/puppetforge/dt/cirrax/policydweight.svg?style=flat-square)](https://forge.puppet.com/cirrax/policydweight)
[![Puppet Forge](https://img.shields.io/puppetforge/e/cirrax/policydweight.svg?style=flat-square)](https://forge.puppet.com/cirrax/policydweight)
[![Puppet Forge](https://img.shields.io/puppetforge/f/cirrax/policydweight.svg?style=flat-square)](https://forge.puppet.com/cirrax/policydweight)

#### Table of Contents

1. [Overview](#overview)
1. [Usage - Configuration options and additional functionality](#usage)
1. [Reference](#reference)
1. [Contribuiting](#contributing)


## Overview

This module is used to configure policyd-weight.

## Usage

Include the policyweight class.

## Reference
Find documentation about possible parameters on top of each manifest.
### classes
#### ::policydweight
Main class to install and run policydweight
#### ::policydweight::config
write configuration for policydweight
#### ::policydweight::service
manage policyd-weigt service
#### ::policydweight::params
default values

## Contributing

Please report bugs and feature request using GitHub issue tracker.

For pull requests, it is very much appreciated to check your Puppet manifest with puppet-lint
and the available spec tests  in order to follow the recommended Puppet style guidelines
from the Puppet Labs style guide.

### Authors

This module is mainly written by [Cirrax GmbH](https://cirrax.com).

See the [list of contributors](https://github.com/cirrax/puppet-policydweight/graphs/contributors)
for a list of all contributors.

