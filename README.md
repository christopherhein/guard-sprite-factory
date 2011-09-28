# Guard Sprite Factory [![Build Status](https://secure.travis-ci.org/christopherhein/guard-sprite-factory.png)](http://travis-ci.org/christopherhein/guard-sprite-factory) #

Guard::SpriteFactory automatically regenerates images by running a rake task.

## Install

Please be sure to have [Guard](https://github.com/guard/guard) installed.

Install the gem:

    $ gem install guard-sprite-factory

Add it to your `Gemfile`, preferably inside the development group:

    gem 'guard-sprite-factory'

Add guard definition to your `Guardfile` by running this command:

    $ guard init sprite-factory