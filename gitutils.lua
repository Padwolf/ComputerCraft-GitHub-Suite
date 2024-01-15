url_str = "https://api.github.com/repos/%s/%s"

function connect(owner, repo)
    repo_info["owner"] = owner
    repo_info["name"] = repo
    repo_info["url"] = string.format(url_str, owner, repo)
    return repo_info
end

function getBranches(repo)
    url = string.format("%s/branches", repo["url"])
    headers = {"Accept: application/vnd.github+json", "Authorization: Bearer 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", "X-GitHub-Api-Version: 2022-11-28"}
    resp = http.get(url, headers)
    print(resp)
    return resp
end