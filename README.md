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

After installation you need to setup access token on [`github`](https://github.com)
- Go to the [`Settings > Personal Access Tokens`](https://github.com/settings/tokens) of your github profile
- Click `Generate New Token` button. Give the token description and select the scope called `public_repo` under `repo` and click `Generate Token`.
- You will be presented with the generated token. Copy the token.
- Then run this command and replace `YOUR_ACCESS_TOKEN` with your token
```bash
$ git config --global auth.token YOUR_ACCESS_TOKEN
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


## License
MIT © [Adnan Ahmed](https://github.com/idnan)