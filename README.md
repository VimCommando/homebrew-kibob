# homebrew-kibob

This tap has been retired.

`kibob` and future VimCommando formulae now live in `VimCommando/homebrew-tools`.

## Migrate

```bash
brew untap VimCommando/kibob
brew tap VimCommando/tools
brew install kibob
```

If you use a `Brewfile`, replace:

```ruby
tap "vimcommando/kibob"
brew "kibob"
```

with:

```ruby
tap "vimcommando/tools"
brew "kibob"
```
