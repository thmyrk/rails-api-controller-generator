# rails-api-controller-generator

## Description
This generator is here to speed up the process of you writing boilercode for your rest-api Rails app.

This generator is highly opinionated. It creates files that fit the way I manage my files and directories inside a Rails project. Also, it assumes you are using: `rspec`, `dry-validation`, *use cases pattern* and *presenter pattern*.

## Installation

Add this line to your application's Gemfile:

```ruby
group :development do
  gem 'rails-api-controller-generator'
end
```

And then execute:

    $ bundle

## Usage

In your project root folder execute:

    $ bundle exec rails generate api_controller model_name action1 action2

So for example running:

    $ bundle exec rails generate api_controller post index create

will create following files:
* app/controllers/api/v1/posts_controller.rb                                                                                 
* app/schemas/posts_index_schema.rb                                                                            
* app/use_cases/posts/index.rb                                                                                 
* app/schemas/posts_create_schema.rb                                                                            
* app/use_cases/posts/create.rb                                                                                 
* app/presenters/post_presenter.rb                                                                               
* app/presenters/posts_presenter.rb                                                                              
* spec/requests/posts_spec.rb

Each of these files will be filled with code.
Model name needs to be singular!

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/rails-api-controller-generator. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the rails-api-controller-generator project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/rails-api-controller-generator/blob/master/CODE_OF_CONDUCT.md).
