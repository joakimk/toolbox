# The BEAM Toolbox

<http://toolbox.elixir.pm>

A site to list Hex packages by category.

Inspired by <http://ruby-toolbox.com>. Name borrowed from Josh Adams of [Elixir Sips](http://elixirsips.com/) with his blessing.


## Status

WIP: Categorizing works but isn't super smooth; not pretty; not many fancy features. See [TODOs](#todo).

Contributions welcome.


## Development

You are expected to have Elixir and Postgres installed.

    mix deps.get
    mix ecto.setup
    mix phoenix.server

Populate the database from the Hex API:

    mix run -e 'Toolbox.PackageSync.run'

Now visit <http://localhost:4000>.


Want to wipe the DB and start over?

    mix ecto.reset


## Test

    mix test


## Production

Deployed to Dokku. This deploys and then runs migrations, if any:

    script/deploy

## How it was set up

* [Notes from running Dokku on Digital Ocean](https://gist.github.com/henrik/26bb73091712aa42abf2)
* [Deploying Phoenix on Dokku](https://gist.github.com/henrik/c70e32544e09c1a79841)


## TODO:

### Pre-MVP
- [x] List package names
- [x] Load packages into DB via some endpoint

### MVP
- [x] Category CRU(D)
- [x] Assigning (flat: "Phoenix / Auth") categories to packages
- [x] Show grouped by category
- [x] Update packages on a schedule

### Pre-launch
- [x] List package descriptions
- [x] Exception logging
- [x] Verify all packages are synced (e.g. count them)
- [x] ToC
- [x] Page titles
- [ ] Rename? "Beambox"?
- [ ] Prettify
  - [ ] Make categorize an icon
- [ ] Improve UX
- [ ] Honeypot for categories to avoid spam?

### Nice-to-have
- [ ] More integrated tests. Hound?
- [ ] Show stats from Hex
- [ ] Show stats from GitHub
- [ ] Sass
- [ ] Slim
- [ ] Favicon
- [ ] CI
- [ ] Handle renamed/removed packages


## Inspired by

* [Awesome Elixir](https://github.com/h4cc/awesome-elixir)
* [The Ruby Toolbox](https://www.ruby-toolbox.com/)


## License and credits

By Henrik Nyh 2015-11-08 under the MIT license.
