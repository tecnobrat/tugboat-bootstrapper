# Companion project for tugboat

## What is Tugboat?

Head on over to [Tugboat](https://github.com/articulate/tugboat) to learn more about the parent project.

## What is Tugboat Bootstrapper?

Tugboat Bootstrapper is a project that is meant to be forked.  This project allows you to create custom configuration for your tugboat setup, while keeping that project pristine.

This repository will likely change VERY infrequently, where most features will be implemented in `tugboat` itself.

## Why create Tugboat Bootstrapper at all?

Well we wanted to open source tugboat, however our implementation contained a bunch of private domain names and information that isn't useful for the general public.  We also wanted to be able to include a wildcarded SSL cert for development purposes, and obviously having that public doesn't work.

So Bootstrapper was born.  Bootstrapper allows us to maintain our own private fork that customizes Tugboat to suit our needs, and you can do the same.  Our fork overrides the root domain to be something besides `tugboat.tld` and sprinkles in some additional internal-only details (wildcard certs, etc.)

## Okay, how do I use this thing?

Simple, first you fork this repository.  If you are going to be putting private information in it, also make it private.

Then you add any SSL certs you need into `ssl/` (if you want SSL) and then edit the `docker-compose.override.yml` to set your domain name, SSL certs and whether you want SSL.

Ensure you have a wildcard DNS entry on whatever domain you entered, and it should point to `192.168.99.100`.  So if you enter `tugboat.ninja` then `*.tugboat.ninja` should point to `192.168.99.100`.

Then simply run `make start`.

If all works as expected, commit your changes and push.

Now, all future developers need to do is clone down the repo and run `make start`

*Note:* Bootstrapper uses a `git submodule` to clone down `tugboat`.

## Contributing

1. Fork it ( https://github.com/articulate/tugboat-bootstrapper/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [tecnobrat](https://github.com/tecnobrat) Brian Stolz - creator, maintainer
