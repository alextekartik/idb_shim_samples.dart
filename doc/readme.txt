== Publish to gh-pages ==

build

  rm -rf deploy
  pub build web
  mv build deploy

  # add commit
  # git commit -m "xxx"


commit gh pages (commit to master first)

  git checkout gh-pages

  rm -rf build
  mv deploy build
  git add build

  # add commit
  # git commit -m "xxx"

Push changes

  git push
