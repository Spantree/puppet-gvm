# Ruby Puppet Module for Boxen

[![Build Status](https://travis-ci.org/Spantree/puppet-gvm.png?branch=master)](https://travis-ci.org/Spantree/puppet-gvm)

Requires the following boxen modules:

* `boxen >= 3.2.0`
* `repository >= 2.1`

## About

This module supports Groovy, Grails and Gradle version management with the [gvm tool](http://gvmtool.org).

## Usage

```puppet
# Install gvm

include gvm

gvm::groovy { '2.2.2': }

gvm::groovy { '2.3.1':
  default => true
}

gvm::grails { '2.4.0': }

gvm::gradle { '1.12': }
```