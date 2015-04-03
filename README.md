# Alexander Dymo's Personal Website and Blog

## Prepare

    rbenv local 2.1.1
    sudo zypper install pygments
    bundle install --path .bundle/gems

## Build

    bundle exec jekyll build

## Run

    bundle exec jekyll serve -w

## Deploy

    bundle exec cap deploy
