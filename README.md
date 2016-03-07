# Blacklight example for Code4Lib 2016 preconference

[![Build Status](https://travis-ci.org/projectblacklight/code4lib_precon_demo.png?branch=master)](https://travis-ci.org/projectblacklight/code4lib_precon_demo)

## System dependencies

* Ruby 2.1 or greater
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
$ bundle exec solr_wrapper -p 8983 -n code4lib_precon_demo -d solr/config -i tmp/solr
```

Indexing fixture data into solr:

```console
$ curl 'http://localhost:8983/solr/code4lib_precon_demo/update?commit=true' --data-binary @solr/fixtures.json -H 'Content-type:application/json'
```

## References

* [Blacklight wiki](https://github.com/projectblacklight/blacklight/wiki)
* [Customizing Blacklight tutorial](http://jessiekeck.com/customizing-blacklight)
* [Customizing Geoblacklight](http://geoblacklight.org/tutorial/2015/02/09/customize-your-application.html)
* [blacklight/configuration.rb](https://github.com/projectblacklight/blacklight/blob/master/lib/blacklight/configuration.rb)
* [Rails guides](http://guides.rubyonrails.org/)
* [Solr Reference Guide](https://cwiki.apache.org/confluence/display/solr/Apache+Solr+Reference+Guide)
