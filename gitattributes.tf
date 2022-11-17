resource "github_repository_file" "api" {
  for_each            = toset(data.github_repositories.python_api.names)
  repository          = each.key
  branch              = "main"
  file                = ".gitattributes"
  content             = file("./res/python_api.gitattributes")
  commit_message      = "Update .gitattributes"
  commit_author       = "github-actions"
  commit_email        = "github-actions[bot]@users.noreply.github.com"
  overwrite_on_create = true
}

resource "github_repository_file" "cron_job" {
  for_each            = toset(data.github_repositories.python_cron_job.names)
  repository          = each.key
  branch              = "main"
  file                = ".gitattributes"
  content             = file("./res/python_cron_job.gitattributes")
  commit_message      = "Update .gitattributes"
  commit_author       = "github-actions"
  commit_email        = "github-actions[bot]@users.noreply.github.com"
  overwrite_on_create = true
}

resource "github_repository_file" "deployment" {
  for_each            = toset(data.github_repositories.python_deployment.names)
  repository          = each.key
  branch              = "main"
  file                = ".gitattributes"
  content             = file("./res/python_deployment.gitattributes")
  commit_message      = "Update .gitattributes"
  commit_author       = "github-actions"
  commit_email        = "github-actions[bot]@users.noreply.github.com"
  overwrite_on_create = true
}

resource "github_repository_file" "package" {
  for_each            = toset(data.github_repositories.python_package.names)
  repository          = each.key
  branch              = "main"
  file                = ".gitattributes"
  content             = file("./res/python_package.gitattributes")
  commit_message      = "Update .gitattributes"
  commit_author       = "github-actions"
  commit_email        = "github-actions[bot]@users.noreply.github.com"
  overwrite_on_create = true
}

resource "github_repository_file" "terraform" {
  for_each            = toset(data.github_repositories.terraform.names)
  repository          = each.key
  branch              = "main"
  file                = ".gitattributes"
  content             = file("./res/terraform.gitattributes")
  commit_message      = "Update .gitattributes"
  commit_author       = "github-actions"
  commit_email        = "github-actions[bot]@users.noreply.github.com"
  overwrite_on_create = true
}