# Releasing

- Update `CHANGELOG.md` with the changes since the last release.
- Update `builder-config.yaml` with the new version under the `dist` key
- Commit changes, push, and open a release preparation pull request for review.
- Once the pull request is merged, fetch the updated `main` branch.
- Apply a tag for the new version on the merged commit (e.g. `git tag -a v1.2.3 -m "v1.2.3"`)
- Push the tag upstream (e.g. `git push origin v1.2.3`). This kicks off the release pipeline in CircleCI, which builds the multi-arch image and pushes it to Docker Hub and public ECR, tagged with the commit SHA, the version, and `latest`.
- Once the pipeline succeeds, create a GitHub release for the tag:
  - Copy the change log entry for the new version into the release notes.
  - Use "generate release notes" in GitHub for the full changelog and any new contributors.
  - Publish the release.
