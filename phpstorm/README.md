# Jetbrains' PHPStorm

You can setup multiple git profiles by having the following files on your
host:
```bash
~/.gitconfig
~/.gitconfig-personal
~/.gitconfig-work
```

Example of the files:

`~/.gitconfig`:
```
[includeIf "gitdir:~/Workspace/personal/"]
  	path = .gitconfig-personal

[includeIf "gitdir:~/Workspace/work/"]
	path = .gitconfig-work

[includeIf "gitdir:~/Workspace/docker-gui-apps/personal/"]
  	path = .gitconfig-personal

[includeIf "gitdir:~/Workspace/docker-gui-apps/work/"]
	path = .gitconfig-work
```

`~/.gitconfig-work`:
```
[user]
	email = work@email.com
  	name = Work Name
```

`~/.gitconfig-personal`:
```
[user]
	email = work@email.com
  	name = Work Name
```