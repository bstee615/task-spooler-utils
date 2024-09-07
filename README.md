# Scripts for task-spooler

This repository holds some utilities for managing jobs with [task-spooler](https://manpages.ubuntu.com/manpages/xenial/man1/tsp.1.html).
See my other project: [task-spooler-gui](https://github.com/bstee615/task-spooler-gui).

## Available commands

Output generated with `list_commands.sh`.

```
tsp-copy-logs  Copy all finished tsp logs to a folder
tspcp          Copy tsp logs to folder
tspr           Remove multiple jobs
tsp-requeue    Remove and re-queue queued commands in a particular order.
tsp-restart    Restart in-progress and queued jobs from a log file
```

## Adding new commands

1. Create a new script in this template:

```bash
#!/bin/bash
# Document the command in the second line of the file.

<run your commands here>
```

1. Update the README with the new output of `list_commands.sh`.
3. Submit a PR on Github. Thanks for your contribution!

## Setup

Run this script. It changes `~/.bashrc`, so back up first if you are nervous :)

```bash
bash install.sh
```
