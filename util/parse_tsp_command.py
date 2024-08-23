"""
Parse the arguments from a command as listed by task-spooler.
Usage: python parse_tsp_command.py [label]echo Hello, world!
"""

import re
import sys

# Get command
command = sys.argv[1:]

# Parse labels
m = re.match(r"\[([^\]]+)\](.*)", command[0])
if m:
    label = m.group(1)
    command[0] = m.group(2)
    command = ["-L", label] + command

# TODO: Handle arguments with spaces

print(" ".join(command))
