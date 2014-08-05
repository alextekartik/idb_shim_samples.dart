== Publish to gh-pages ==

build

  pub build web
  git push

commit gh pages (commit to master first)

  git checkout gh-pages

  git add build
  git push
