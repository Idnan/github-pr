# Github PR

> Command line tool for generating pull request on github

## Install

You can install it either using CURL

```bash
$ curl -L https://raw.githubusercontent.com/idnan/github-pr/master/installer.sh | sudo sh
```

Or by cloning and manually installing it

```bash
$ git clone https://github.com/idnan/github-pr.git
$ cd github-pr
$ sudo make install
```

## Usage
```bash
$ ghpr -t <title> [options]
```

Below is the description of all the accepted options

- `-h` Branch you want to PR. It has to exist in the remote. (Default: current branch)
- `-b` Branch where you want your PR merged into. (Default: master)
- `-t` Title of the PR (Default: the last commit's title, as long as there is only one commit in the PR)
- `-d` Description of the PR
- `-c` Copy the PR URL to the clipboard
- `-f` Fake run, doesn't make the request but prints the URL and body
