== Publish to gh-pages ==

build

  pub build web
  git push

commit gh pages (commit to master first)

  pub checkout gh-pages

  git add build
  git push