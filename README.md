# Scripts for task-spooler

This repository holds some utilities for managing jobs with [task-spooler](https://manpages.ubuntu.com/manpages/xenial/man1/tsp.1.html).
See my other project: [task-spooler-gui](https://github.com/bstee615/task-spooler-gui).

## Commands

```
bin/tsp-commands-list  List all commands
bin/tspcp              Copy all finished tsp logs to a specified folder
bin/tspr               Remove multiple jobs
```

## Setup

1. Make sure the scripts in `bin` are executable.

```bash
chmod +x bin/*
```

2. Add `bin` to your `$PATH`.

```bash
echo 'export PATH="$PATH:$PWD/bin"' >> ~/.bashrc
```
