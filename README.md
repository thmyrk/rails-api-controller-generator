# rails-api-controller-generator

## Description
This generator is here to speed up the process of you writing boilercode for your rest-api Rails app.

This generator is highly opinionated. It creates files that fit the way I manage my files and directories inside a Rails project. Also, it assumes you are using: `rspec`, `dry-validation`, *use cases pattern* and *presenter pattern*.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rails-api-controller-generator'
```

And then execute:

    $ bundle

## Usage

In your project root folder execute:

    $ bundle exec rails generate api_controller Model action1 action2

Which will create following files:
* app/controllers/api/v1/models_controller.rb                                                                                 
* app/schemas/models_action1_schema.rb                                                                            
* app/use_cases/models/action1.rb                                                                                 
* app/schemas/models_action2_schema.rb                                                                            
* app/use_cases/models/action2.rb                                                                                 
* app/presenters/model_presenter.rb                                                                               
* app/presenters/models_presenter.rb                                                                              
* spec/requests/models_spec.rb


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/rails-api-controller-generator. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the rails-api-controller-generator project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/rails-api-controller-generator/blob/master/CODE_OF_CONDUCT.md).
