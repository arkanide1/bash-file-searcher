# search for a specific string within files
This script is a Bash script designed to search for a specific string within files in a given directory

## Installation

1. **Check Existing Command:**

   First, navigate to the `/usr/bin` directory to check if the command name already exists using:
   ```bash
   ls *fileSearcher*
   ```
   or
   ```bash
   test -e fileSearcher && echo "Command exists." || echo "Command does not exist."
   ```

2. **Move Script to `/usr/bin`:**

   If the command does not exist, move the script to the `/usr/bin` directory using:
   ```bash
   sudo cp fileSearcher /usr/bin
   ```

3. **Set Execution Permissions:**

   Make the script executable by running:
   ```bash
   sudo chmod +x /usr/bin/fileSearcher
   ```

## Usage

Once installed, the `fileSearcher` command can be used to search for files with a specific extension containing a specific string.

Example usage:
```bash
fileSearcher -t pdf -n "modules" -d ./Desktop/books
```

- `-t`: Specify the file extension.
- `-n`: Specify the string to search for.
- `-d`: Specify the directory to search in.
