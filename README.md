# Github PR

> CLI tool to automatically create pull request on Github

## Install

You can install it either using cURL

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

- `-h` Source branch from which pull request will be created (Default: current branch)
- `-b` Target branch to which PR is to be opened (Default: master)
- `-t` Title of the PR (Default: the last commit's title, as long as there is only one commit in the PR)
- `-d` Description of the PR
- `-c` Copy the PR URL to the clipboard
- `-f` Fake run, doesn't make the request but prints the URL and body

## Note

You need to have setup the access token on [`github`](https://github.com)
- [Create token on Github](https://github.com/settings/tokens/new)
- Copy the generated token and run the following command

```bash
$ git config --global auth.token YOUR_ACCESS_TOKEN
```

## License
MIT © [Adnan Ahmed](https://github.com/idnan)