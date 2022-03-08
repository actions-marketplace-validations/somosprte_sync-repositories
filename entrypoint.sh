# add target remote
git remote add target http://${
  INPUT_USERNAME
}:${
  INPUT_TOKEN_SECRET
}@${
  INPUT_DESTINATION#https://
}

# checkout to updated branch
git checkout ${{ env.GITHUB_REF_NAME }}

# push new branch reference to github
git push target ${{ env.GITHUB_REF_NAME }}