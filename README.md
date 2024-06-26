<h1>MySQL Blog Interface</h1>

   I created this tool to facilitate interaction with a local MySQL blog and as an educational endeavor to learn Bash scripting. The majority of the meaningful code for this project is held [here.](blog_module)

<br></br>

<h2>Table of Contents</h2>

- [Installation](#installation)
- [Documentation](#documentation)
- [License](#license)

<br></br>

<h2>Installation</h2>

1. Ensure that you have Docker properly installed on your system.
<ul>
   <li>https://docs.docker.com/get-docker/</li>
</ul>
<br></br>

2. Clone this repository and enter the directory.

```bash
git clone git@github.com:coreyMerritt/mysql-blog-interface
```
```bash
cd mysql-blog-interface
```
<br></br>

3. Build, run and enter the container.

```bash
docker-compose build
```
```bash
docker-compose up -d
```
```bash
docker-compose exec mysql_blog_interface bash
```

<br></br>

<h2>Documentation</h2>

<h3>Read</h3>
<b><p style="margin-bottom: 50px;">Description: </b>Reads one or more entries from the database.</p>
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
blog read 2
```
```bash
blog read "4, 5, 3"
```
```bash
blog read all
```
```bash
blog read last
```
<br></br>
<h3>Write</h3>
<b><p style="margin-bottom: 50px;">Description: </b>Writes an entry to the database.</p>
<ul>
   <li><b>arg1</b> <i>(optional)</i> --- You may specify a file other than the "entry" file to be submitted.</li>
</ul>

```bash
blog write
```
```bash
blog write different_file.txt
```
     
<br></br>
<h3>Edit</h3>
<b><p style="margin-bottom: 50px;">Description: </b>Edits an entry from the database.</p>
<ul>
   <li><b>arg1</b> <i>(optional)</i> --- You may specify exactly one entry to edit.</li>
   <li><b>arg2</b> <i>(optional)</i> --- You may specify a file other than the "entry" file to work in.</li>
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
<h3>Delete</h3>
<b><p style="margin-bottom: 50px;">Description: </b>Deletes one or more entries from the database.</p>
<ul>
   <li><b>arg1</b> <i>(optional)</i> --- You may specify one or more entries to delete.</li>
      <ul>
          <li>Quotes and commas must be used as shown below for multiple entries.</li>  
      </ul>
</ul>

```bash
blog delete
```
```bash
blog delete 5
```
```bash
blog delete "2, 4, 5"
```
```bash
blog delete last
```

<br></br>
<h3>Backup</h3>
<b><p style="margin-bottom: 50px;">Description: </b>Exports a backup.sql file of the local database to your current directory.</p>


```bash
blog backup
```

<br></br>

<h2>License</h2>

This project is licensed under the [MIT License](LICENSE).
