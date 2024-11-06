local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('eclipse-p3com') {
  settings+: {
    description: "",
    name: "Eclipse p3com",
    web_commit_signoff_required: false,
    workflows+: {
      actions_can_approve_pull_request_reviews: false,
    },
  },
  _repositories+:: [
    orgs.newRepo('p3com') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      description: "p3com",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
    },
  ],
}