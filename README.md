# Rails 7 Starter

This is a starter app for Rails 7. It includes:

- ESBuild
- Sass
- Devise
- RSpec
- Capybara
- FactoryBot
- Faker
- Rubocop

## Getting Started

To get started, clone the repo and then install the needed gems:

```sh
$ bundle install
$ rails db:create && rails db:migrate
```

### Devise [[docs]](https://github.com/heartcombo/devise#getting-started)

Install Devise:

```sh
$ rails generate devise:install
```

## Tests

To run the tests:

First, install RSpec:

```sh
$ rails generate rspec:install
```

Then run tests with:

```sh
$ rspec
```
