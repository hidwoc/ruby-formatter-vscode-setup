# Ruby VSCode Setup

A repository tracking my Ruby formatting set up in VSCode

# TODO

- Table of Contents with links to sections
- Add Ruby Section
- Add VSCode Ruby Section

# Installs

## From VSCode Marketplace

- [Ruby by Peng Lv](https://github.com/rubyide/vscode-ruby)
- [VSCode Ruby by Stafford Brunk](https://github.com/rubyide/vscode-ruby)
- [Endwise](https://github.com/kaiwood/vscode-endwise)
- [RuboCop](https://github.com/rubocop-hq/rubocop)
- [Prettier](https://github.com/prettier/plugin-ruby)

# Global Config

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
    // "editor.defaultFormatter": "misogi.ruby-rubocop"
    "editor.defaultFormatter": "esbenp.prettier-vscode",
  }
}
```
> Most of this can be found in the [Ruby by Peng Lv](https://github.com/rubyide/vscode-ruby) documentation

## Endwise
Automatically adds the "end" keyword wherever it is needed. Just install from the marketplace and you are good to go!

# Local Project Config

## Prettier Ruby Plugin

Formatter that can be used in place of or in conjunction with RuboCop

---
Install via CLI:
```
gem install 'prettier'
```
OR

Add to Gemfile:
```
gem 'prettier'
```
...then execute `bundle`

Run Prettier with configured `Format Document` command or execute:
```
bundle exec rbprettier --write '**/*'
```

### Usage with RuboCop

> Copied from [Prettier](https://github.com/prettier/plugin-ruby) for possible implementation later

RuboCop and Prettier for Ruby serve different purposes, but there is overlap with some of RuboCop's functionality.

Prettier provides a RuboCop configuration file to disable the rules which clash. To enable, add the following config at the top of your project's `.rubocop.yml`:

#### Ruby gem

```ruby
inherit_gem:
  prettier: rubocop.yml
```

#### npm package

```js
inherit_from:
  - node_modules/@prettier/plugin-ruby/rubocop.yml
```

# Have not figured out:

## RuboCop

RuboCop is a **highly** opinionated formatter. The autocorrect is incredibly powerful, I definitely need to do more research on setting up its config files before I feel comfortable implementing it.

---

Install via CLI:

```
gem install rubocop
```

OR

Add to Gemfile:
```
gem 'rubocop', require: false
```

...then execute `bundle`

Run RoboCop with configured `Format Document` command or execute:
```
rubocop
```

### RuboCop-Rails Extension

---

Install via CLI: 

```
gem install rubocop-rails
```

OR

Add to Gemfile: 
```
gem 'rubocop-rails'
```
...then execute `bundle`

Configure RuboCop to load the Rails extension in CLI: 
```
rubocop --require rubocop-rails
```

OR

Add to `.rubocop.yml`: 
```
require: rubocop-rails
```


# Content Notes
- [Ruby by Peng Lv](https://github.com/rubyide/vscode-ruby) recommended by Stefon Simmons
- [VSCode Ruby by Stafford Brunk](https://github.com/rubyide/vscode-ruby) recommended by Stefon Simmons
- [Endwise](https://github.com/kaiwood/vscode-endwise) recommended by Malika Johnson
- [RuboCop](https://github.com/rubocop-hq/rubocop) recommended by [Soleil Solomon](https://github.com/soleilyasmina)
- scratch.rb code from [Prettier](https://github.com/prettier/plugin-ruby)
