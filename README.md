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

## Examples

> Pull request from current branch to `master` branch with specified title

```shell
$ ghpr -t "Adds the unit tests"
```

> Pull request from `tests` branch to `develop`

```shell
$ ghpr -t "Adds the unit tests" -h develop -b tests
```

> Specifying the description

```shell
$ ghpr -t "Adds the unit tests" -h develop -b tests -d "Added unit tests for the ACL module"
```

> Copy the pull request URL to clipboard after opening
> Will open pull request from current branch to master with the given title and copy the URL to clipboard

```shell
$ ghpr -t "Adds the unit tests" -c
```

> Dry run - Below command will not create a pull request but print the meta

```shell
$ ghpr -t "Adds the unit tests" -h develop -b tests
```

## Note

You need to have setup the access token on [`github`](https://github.com)
- [Create token on Github](https://github.com/settings/tokens/new)
- Copy the generated token and run the following command

```bash
$ git config --global auth.token YOUR_ACCESS_TOKEN
```

## License
MIT © [Adnan Ahmed](https://github.com/idnan)