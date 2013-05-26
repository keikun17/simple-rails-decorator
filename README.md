# SimpleRailsDecorator

  Simple Base decorator for Rails Objects

  Adds Rails routing, `content_tag` and helper interface to your delegators

## Installation

Add this line to your application's Gemfile:

    gem 'simple_rails_decorator'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install simple_rails_decorator

## Usage


    class BikeDecorator < SimpleDecorator
      def summary
        content_tag :span do
          link_to __getobj__.summary, __getobj__
        end
      end
    end

Set

    # Decorate a single object
    @decorated_bike = BikeDecorator.new(Bicycle.first)

    # You can pass in Arel objects or paginated enumerables
    @decorated_bikes = BikeDecorator.decorates_collection(Bicycle.arel_scope)

Call

    @decorated_bike.summary
    @decorated_bikes.map(&:summary)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
