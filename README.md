# MySQL Blog Interface

I created this tool to facilitate interaction with a local MySQL blog and as an educational endeavor to learn Bash scripting.
<br></br>
## Table of Contents

- [Installation](#installation)
- [Documentation](#documentation)
- [License](#license)
<br></br>
## Installation

1. Ensure that you have Docker properly installed on your system.
   - https://docs.docker.com/get-docker/

3. Clone this repository and enter the directory.

```bash
git clone git@github.com:coreyMerritt/mysql-blog-interface
```
```bash
cd mysql-blog-interface
```

3. Build, run and enter the container.
```bash
docker-compose build
```
```bash
docker-compose up -d
```
```bash
docker-compose exec mysql-blog-interface bash
```

## Documentation

Actions:

  - read --- Reads one or more entries from the database.
    - arg1 (optional) = entry#      You may specify one or more entries to be read. Quotes and parenthesis must be used as shown below for multiple entries.
     ```bash
     blog read
     ```
     ```bash 
     blog read 19
     ```
     ```bash
     blog read "4, 5, 6"
     ```
     ```bash
     blog read all
     ```
     ```bash
     blog read last
     ```
            
  - write --- Writes an entry to the database. Your entry should be written in the "entry" file before running this command.
    - arg1 (optional) = file_name.txt      You may specify a file other than the "entry" file if you prefer.
     ```bash
     blog write
     ```
     ```bash
     blog write different_file.txt
     ```
     
  - edit --- Edits an entry to the database. Your edited entry should be placed in the "entry" file before running this command. The "read" action may be used to retrieve the previous entry as a base to edit.
    - arg1 (optional) = entry#      You may specify exactly one entry to edit.
    - arg2 (optional) = file_name.txt      You may specify a file other than the "entry" file if you prefer. 
     ```bash
     blog edit
     blog edit 5
     blog edit 5 different_file.txt
     ```
     
  - delete --- Deletes one or more entries from the database.
    - arg1 (optional) = entry#      You may specify one or more entries to edit. Quotes and parenthesis must be used as shown below for multiple entries.
     ```bash
     blog delete
     ```
     ```bash
     blog delete 5
     ```
     ```bash
     blog delete "4, 5, 6"
     ```
     ```bash
     blog delete last
     ```
     
  - backup --- Exports a backup.sql file of the local database to your current directory.
     ```bash
     blog backup
     ```

## License

This project is licensed under the [MIT License](LICENSE).
