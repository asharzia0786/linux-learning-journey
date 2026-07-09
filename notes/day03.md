# Day 03 - File Processing & Searching

## Viewing Files

```bash
cat file.txt
```

Displays the entire file.

```bash
less file.txt
```

Opens a scrollable view of a file.

Controls:

* `/word` → Search
* `n` → Next match
* `q` → Quit

```bash
more file.txt
```

Views a file one page at a time (older alternative to `less`).

---

## Viewing Parts of a File

```bash
head file.txt
```

Shows the first 10 lines.

```bash
head -n 5 file.txt
```

Shows the first 5 lines.

```bash
tail file.txt
```

Shows the last 10 lines.

```bash
tail -n 5 file.txt
```

Shows the last 5 lines.

```bash
tail -f logfile.log
```

Follows a log file in real time.

---

## Searching Inside Files

```bash
grep "ERROR" app.log
```

Searches for a word.

```bash
grep -i "error" app.log
```

Case-insensitive search.

```bash
grep -n "INFO" app.log
```

Displays matching lines with line numbers.

```bash
grep -r "localhost" .
```

Recursively searches inside all files from the current directory.

---

## Finding Files

```bash
find . -name "*.log"
```

Finds all `.log` files.

```bash
find . -name "*.conf"
```

Finds all `.conf` files.

```bash
find . -type f
```

Finds only files.

```bash
find . -type d
```

Finds only directories.

---

## Counting

```bash
wc file.txt
```

Shows lines, words and characters.

```bash
wc -l file.txt
```

Counts lines.

```bash
wc -w file.txt
```

Counts words.

```bash
wc -c file.txt
```

Counts characters.

---

## Sorting

```bash
sort file.txt
```

Sorts alphabetically.

```bash
sort -r file.txt
```

Sorts in reverse order.

```bash
sort -n file.txt
```

Sorts numerically.

```bash
sort -u file.txt
```

Sorts and removes duplicate lines.

---

## Removing Duplicates

```bash
uniq file.txt
```

Removes adjacent duplicate lines.

```bash
sort file.txt | uniq
```

Sorts first, then removes duplicates.

```bash
uniq -d file.txt
```

Shows only duplicate lines.

```bash
uniq -u file.txt
```

Shows only unique lines.

```bash
uniq -c file.txt
```

Shows the number of occurrences of each line.

---

## Pipes

```bash
command1 | command2
```

Sends the output of the first command as input to the second.

Example:

```bash
sort users.txt | uniq
```

---

## Output Redirection

```bash
echo "Hello" > file.txt
```

Creates or overwrites a file.

```bash
echo "Hello" >> file.txt
```

Appends to a file.

---

## Wildcards

```bash
*.log
```

Matches all files ending with `.log`.

Examples:

```bash
find . -name "*.log"
```

```bash
ls *.txt
```

---

## Important Notes

* `grep` searches **inside** files.
* `find` searches for **files and directories**.
* `tail -f` is commonly used to monitor application logs.
* `uniq` only removes **adjacent** duplicates; use `sort | uniq` for unsorted files.
* `>` overwrites a file, while `>>` appends to it.
