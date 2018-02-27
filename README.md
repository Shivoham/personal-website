Personal website
=====

## Requirements
- [hugo static site generator](https://gohugo.io) ~0.36 

## Setup

```
$ git clone git@github.com:Shivoham/personal-website.git
$ cd personal-website
$ git submodule init
$ git submodule update
```

## Contribution
Launch the development server:
`$ hugo server -D`

Website should be live at `localhost:1313`.

## Deployment

Website is hosted thanks to github pages. Deployment procedure relies on a `gh-pages`branch to update the website static content.

`$ ./deploy.sh`
