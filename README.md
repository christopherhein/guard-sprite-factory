# Guard Sprite Factory [![Build Status](https://secure.travis-ci.org/christopherhein/guard-sprite-factory.png)](http://travis-ci.org/christopherhein/guard-sprite-factory) #

Guard::SpriteFactory automatically regenerates images by running a rake task. defined by you!


## Deendencies! ##

* [Guard](https://github.com/guard/guard)
* [Sprite Factory](https://github.com/jakesgordon/sprite-factory)


## Install ##

Install the gem:

```bash
$ gem install guard-sprite-factory
```

Add it to your `Gemfile`, preferably inside the development group:

```ruby
gem 'guard-sprite-factory'
```

Add guard definition to your `Guardfile` by running this command:

```bash
$ guard init sprite-factory
```


## Guardfile ##

```ruby
guard 'sprite-factory', :task_name => 'assets:resprite' do
  watch(%r{^app/assets/images/icons/*.*})
  watch(%r{^lib/tasks/assets.rake})
end
```

This will run the rake task `assets:resprite` (the default for spritefactory)
although if you choose to use a different name you can always change it.


## Options ##

`:run_on_start` - This will automatically run the rake task for recreating images anytime you start guard


## Development ##

- Code @ [GitHub](https://github.com/christopherhein/guard-sprite-factory)
- Issues & features [GitHub Issues](https://github.com/christopherhein/guard-sprite-factory/issues)

Feel free to fork it and add anything you would like, if you have a very cool change, let me know and we can work out a pull request.


## License ##

(The MIT License)

Copyright (c) 2011 Chris Hein

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
