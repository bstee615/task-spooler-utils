commands=$(bash list_commands.sh)
tempfile=$(mktemp)

awk -v new_commands="$commands" '
/## Available commands/ {
    print;                         # Print the heading
    getline;                       # Move to the next line
    while ($0 !~ /```bash/) {
        print; getline;            # Print lines until the start of the code block
    }
    getline;
    while ($0 !~ /```/) {
        getline;                   # Skip old code block lines until the end
    }
    print "```bash";               # Print new code block start
    print new_commands;            # Insert new commands from list_commands.sh
    print "```";                   # Print new code block start
    next                           # Continue with the rest of the file
}
{
    print                          # Print any other lines outside of the target block
}
' $(dirname $0)/README.md > $tempfile && mv $tempfile $(dirname $0)/README.md
