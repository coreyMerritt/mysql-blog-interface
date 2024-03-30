<h1>MySQL Blog Interface</h1>

I created this tool to facilitate interaction with a local MySQL blog and as an educational endeavor to learn Bash scripting.
<br></br>
<h2>Table of Contents</h2>

- [Installation](#installation)
- [Documentation](#documentation)
- [License](#license)
<br></br>
<h2>Installation</h2>

1. Ensure that you have Docker properly installed on your system.
   - https://docs.docker.com/get-docker/

2. Clone this repository and enter the directory.

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

<h2>Documentation</h2>

<h3><u>Read</u></h3>
<b>Description:</b> Reads one or more entries from the database.
<ul>
   
   <li><b>arg1</b> <i>(optional)</i> --- You may include one or more entries to read.</li>
      <ul>
         <li>Quotes and commas must be used as shown below for multiple entries.</li>  
      </ul>
</ul>

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
<br></br>
<h3>write</h3>

<ul>
   <li><b>Description:</b> Writes an entry to the database. Your entry should be written in the "entry" file before running this command.</li>
   <li><b>arg1</b> <i>(optional)</i> --- You may specify a file other than the "entry" file if you prefer.</li>
</ul>

```bash
blog write
```
```bash
blog write different_file.txt
```
     
<br></br>
<h3>edit</h3>

<ul>
   <li><b>Description:</b> Edits an entry to the database. <u>Your edited entry should be placed in the "entry" file before running this command.</u>
      <ul>
         <li>The "read" action may be used to retrieve the previous entry as a base to edit.</li>
      </ul>
   <li><b>arg1</b> <i>(optional)</i> --- You may specify exactly one entry to edit.</li>
   <li><b>arg2</b> <i>(optional)</i> --- You may specify a file other than the "entry" file if you prefer.</li>
</ul>

```bash
blog edit
```
```bash
blog edit 5
```
```bash
blog edit 5 different_file.txt
```
     
<br></br>
<h3>delete</h3>

<ul>
   <li><b>Description:</b> Deletes one or more entries from the database.</li>
   <li><b>arg1</b> <i>(optional)</i> --- You may specify one or more entries to delete.</li>
      <ul>
          <li>Quotes commas must be used as shown below for multiple entries.</li>  
      </ul>
</ul>

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

<br></br>
<h3>Backup</h3>
<li><b>Description:</b> Exports a backup.sql file of the local database to your current directory.</li>


```bash
blog backup
```

## License

This project is licensed under the [MIT License](LICENSE).
