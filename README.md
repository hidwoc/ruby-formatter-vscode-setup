# Ruby VSCode Setup

A repository tracking my Ruby formatting set up in VSCode.

## Installs

### From VSCode Marketplace

- [Ruby by Peng Lv](https://github.com/rubyide/vscode-ruby)
- [VSCode Ruby by Stafford Brunk](https://github.com/rubyide/vscode-ruby)
- [Endwise](https://github.com/kaiwood/vscode-endwise)
- [RuboCop](https://github.com/rubocop-hq/rubocop)
- [Prettier](https://github.com/prettier/plugin-ruby)

## Global Config

Here's what I've added in my settings.json:
```json
{
  "ruby.useBundler": true,
  "ruby.useLanguageServer": true,
  "ruby.lint": {
    "rubocop": {
      "useBundler": true
    },
  },
  "ruby.format": "rubocop",
  "[ruby]": {
    "editor.defaultFormatter": "misogi.ruby-rubocop"
    // "editor.defaultFormatter": "esbenp.prettier-vscode",
  }
}
```
Most of this can be found in the [Ruby by Peng Lv](https://github.com/rubyide/vscode-ruby) documentation

## Local Project Config

### RuboCop

Install **RuboCop** via CLI:

```
gem install rubocop
```

Or add to Gemfile:
```
gem 'rubocop', require: false
```

Then execute `bundle`

Run rubocop with configured `Format Document` command or execute:
```
rubocop
```

### RuboCop-Rails Extension
1. Install

In CLI: 

```
gem install rubocop-rails
```

  OR

Add to Gemfile: 
```
gem 'rubocop-rails'
```

2. Configure RuboCop to load the Rails extension

In CLI: 
```
rubocop --require rubocop-rails
```

OR

Add to `.rubocop.yml`: 
```
require: rubocop-rails
```

### Prettier Ruby Plugin

Add to Gemfile:
```
gem 'prettier'
```
Then execute `bundle`

Run Prettier with configured `Format Document` command or execute:
```
bundle exec rbprettier --write '**/*'
```

#### Usage with RuboCop

RuboCop and Prettier for Ruby serve different purposes, but there is overlap with some of RuboCop's functionality.

Prettier provides a RuboCop configuration file to disable the rules which clash. To enable, add the following config at the top of your project's `.rubocop.yml`:

##### Ruby gem

```ruby
inherit_gem:
  prettier: rubocop.yml
```

##### npm package

```js
inherit_from:
  - node_modules/@prettier/plugin-ruby/rubocop.yml
```
Copied from [Prettier](https://github.com/prettier/plugin-ruby) for possible implementation later
