# Hashrocket on Rails

Automate setting up a new project with defaults used at Hashrocket.

This gem provides the following:

  * Loose dependencies on gems we always use
  * Common assets accessible via the asset pipeline
  * A generator that sets up a base layout & sass structure
  * An engine & generator that exposes UI comps

## Installation

Add this line to your application's Gemfile:

    gem 'hashrocket-rails'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install hashrocket-rails

## Usage

### Gem Dependencies

There are a few gems we use on every project. These have been added to the
gemspec without a version specified. It should be safe to exclude them from the
project Gemfile. If you need to lock a specific version of the gem, just add it
back to the project Gemfile.

Included gems are:

  * haml-rails
  * decent_exposure

### Generators

Run all included generators:

    $ rails g hashrocket:install

This runs a meta generator which invokes the following:

    $ rails g hashrocket:layout
    $ rails g hashrocket:ui

### Layout

The generator adds a barebones haml layout and sets up the stylesheet structure for the app.

Layout includes:

  * html5shiv
  * flash rendering
  * a yield for head content

Stylesheet structure:

  * whitespace-reset is included
  * requires all stylesheets in /vendor
  * requires all stylesheets in /global
  * does not automatically include root stylesheets
  * imports mixins

All assets required are included with the engine. You can work in the
application stylesheet out of the box.

### UI Boilerplate

At Hashrocket we expose a `/ui` route where our front-end team implements
design before it is integrated to the main app. This code is included as an
engine. There is a generator which will hook your app into the engine.

    $ rails g hashrocket:ui

This will add a route and controller `app/controllers/ui_controller.rb` which
subclasses the engine controller. This avoids the need to namespace UI files
and provides an extension point for customization.

You can now add UI comps to `app/views/ui` and they will appear at `/ui` in
your app.

You can explicitly exclude files from being shown in the UI index by adding the
following to `ui_controller.rb`.

    @@@ ruby
    class UiController < Hashrocket::UiController
      exclude 'filename', 'other_filename', ->(w) { w.ends_with?('_old') }
    end

By default the `index` view & any partials are excluded.

## Contributing

The intention of this gem is to be included & used on every Hashrocket project.
As such new features need to be something we might need on every project. Pull
requests adding features specific to your workflow will likely be declined.

However, if you think we are missing something feel free to make a case for it!

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
