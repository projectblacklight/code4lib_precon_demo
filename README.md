# Blacklight example for Code4Lib 2017 preconference

[![Build Status](https://travis-ci.org/projectblacklight/code4lib_precon_demo.png?branch=master)](https://travis-ci.org/projectblacklight/code4lib_precon_demo)

## System dependencies

* Ruby 2.3 or greater
* Java 7 or greater

[GoRails](https://gorails.com/setup/) provides a tutorial for preparing your machine for Rails development on OS X and Linux.

## Getting Started

Cloning the project:

```console
$ git clone git@github.com:projectblacklight/code4lib_precon_demo.git # preferred, or:
# $ git clone https://github.com/projectblacklight/code4lib_precon_demo.git # or:
# download https://github.com/projectblacklight/code4lib_precon_demo/archive/master.zip

$ cd code4lib_precon_demo
```

Installing the dependencies:

```
$ bin/setup
# this runs `bundle install`, `rake db:setup`, and does environment sanity checks
```

Running the tests:

```console
$ bundle exec rake ci
```

Running the rails server:

```console
$ bundle exec rails server
```

Starting solr:

```console
# in a new terminal:
$ bundle exec solr_wrapper -p 8983 -n blacklight-core -d solr/conf -i tmp/solr
```

Indexing data into solr:

Download our [sample MARC data] (https://github.com/projectblacklight/blacklight-data/archive/master.zip).

```console
$ MARC_FILE=../path/to/the/blacklight-data/lc_records.utf8.mrc be rake solr:marc:index
```

## References

* [Blacklight wiki](https://github.com/projectblacklight/blacklight/wiki)
* [Customizing Blacklight tutorial](http://jessiekeck.com/customizing-blacklight)
* [Customizing Geoblacklight](http://geoblacklight.org/tutorial/2015/02/09/customize-your-application.html)
* [blacklight/configuration.rb](https://github.com/projectblacklight/blacklight/blob/master/lib/blacklight/configuration.rb)
* [Rails guides](http://guides.rubyonrails.org/)
* [Solr Reference Guide](https://cwiki.apache.org/confluence/display/solr/Apache+Solr+Reference+Guide)
