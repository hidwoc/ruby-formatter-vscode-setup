# Ruby VSCode Setup

A repository tracking my Ruby formatting set up in VSCode

# Summary

I have Ruby, VSCode Ruby, Endwise, Prettier Ruby Plugin and RuboCop installed in VSCode.

 I've added most of the recommended code from [Ruby](https://github.com/rubyide/vscode-ruby) in settings.json but have chosen to set my Ruby default formatter to **Prettier** because I prefer its speed over RuboCop. RuboCop takes a full second to run and has **A LOT** of opinions - this is both helpful yet annoying. 

I'm keeping it enabled so that I can use it as a learning tool but if the squigglies get overwhelming, you can disable it and Prettier seems to run fine even without making any changes to the global config.

Copy over the code from format_ruby.rb to test your formatter!

# TODO

- Table of Contents with links to sections
- Config RuboCop to ignore certain warnings

# Installs

## From VSCode Marketplace

- [Ruby by Peng Lv](https://github.com/rubyide/vscode-ruby)
- [VSCode Ruby by Stafford Brunk](https://github.com/rubyide/vscode-ruby)
- [Endwise](https://github.com/kaiwood/vscode-endwise)
- [RuboCop](https://github.com/rubocop-hq/rubocop)
- [Prettier Ruby Plugin](https://github.com/prettier/plugin-ruby)

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
    "editor.defaultFormatter": "esbenp.prettier-vscode",
  }
}
```
> Most of this can be found in the [Ruby by Peng Lv](https://github.com/rubyide/vscode-ruby) documentation

## [Ruby](https://github.com/rubyide/vscode-ruby)

Detects Ruby environment and provides linting and formatting support via RuboCop and/or Prettier (more available). Install from the marketplace and you are good to go!

## [VSCode Ruby](https://github.com/rubyide/vscode-ruby)

> Copied from [VSCode Ruby description](https://marketplace.visualstudio.com/items?itemName=wingrunr21.vscode-ruby)

This extension provides improved syntax highlighting, language configuration, and snippets to Ruby and ERB files within Visual Studio Code. It is meant to be used alongside the Ruby extension. This extension is listed as a dependency for the Ruby extension and does not need to be installed independently

## [Endwise](https://github.com/kaiwood/vscode-endwise)

Automatically adds the "end" keyword wherever it is needed. Just install from the marketplace and you are good to go!

## [Prettier Ruby Plugin](https://github.com/prettier/plugin-ruby)

Formatter that can be used in place of or in conjunction with RuboCop

---
Install via CLI:
```
gem install 'prettier'
```

Run Prettier with configured `Format Document` command

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

## [RuboCop](https://github.com/rubocop-hq/rubocop)

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
- [Ruby by Peng Lv](https://github.com/rubyide/vscode-ruby) recommended by [Stefon Simmons](https://github.com/stefonsimmons)
- [VSCode Ruby by Stafford Brunk](https://github.com/rubyide/vscode-ruby) recommended by [Stefon Simmons](https://github.com/stefonsimmons)
- [Endwise](https://github.com/kaiwood/vscode-endwise) recommended by Malika Johnson
- [RuboCop](https://github.com/rubocop-hq/rubocop) recommended by [Soleil Solomon](https://github.com/soleilyasmina)
- scratch.rb code from [Prettier](https://github.com/prettier/plugin-ruby)
