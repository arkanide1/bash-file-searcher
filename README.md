# bash-file-searcher
This script is a Bash script designed to search for files with a specific extension in a given directory and then search for a specific string within those files.

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
   This allows us to use the command from any directory.

3. **Set Execution Permissions:**

   Make the script executable by running:
   ```bash
   sudo chmod +x /usr/bin/fileSearcher
   ```

## Usage

Once installed, the `fileSearcher` command can be used to search for files with a specific extension containing a specific string.

Example usage:
```bash
fileSearcher -t pdf -n search_string -d /path/to/directory
```

- `-t`: Specify the file extension.
- `-n`: Specify the string to search for.
- `-d`: Specify the directory to search in.

### Note

Make sure to replace `search_string` with the actual string you want to search for, and `/path/to/directory` with the directory where you want to search for files.
