# Git Hound

---

![](https://img.shields.io/github/commit-activity/m/ezekg/git-hound)
![](https://img.shields.io/github/last-commit/ezekg/git-hound)

---

GitHound pinpoints exposed API keys and other sensitive information across all of GitHub using pattern matching, commit history searching, and a unique result scoring system. GitHound has earned me over $7500 applied to Bug Bounty research. Corporate and Bug Bounty Hunter use cases are outlined below. More information on methodologies is available in the accompanying blog post.

---

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
### Table of Contents

- [Git Hound](#git-hound)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

---

- [Git Hound](https://github.com/ezekg/git-hound.git)
- [Similar Project](https://github.com/tillson/git-hound)

```bash
git log -p | git-hound -config /.githound.yml sniff
```
