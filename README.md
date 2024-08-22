# Scripts for task-spooler

This repository holds some utilities for managing jobs with [task-spooler](https://manpages.ubuntu.com/manpages/xenial/man1/tsp.1.html).
See my other project: [task-spooler-gui](https://github.com/bstee615/task-spooler-gui).

## Available commands

Output generated with `list_commands.sh`.

```
tspcp  Copy all finished tsp logs to folder
tspr   Remove multiple jobs
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

Run this script.

```bash
bash install.sh
```
