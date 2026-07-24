# Day 09 - Bash Automation

## Commands & Concepts Learned

### For Loop
```bash
for item in list
do
    commands
done
```
Executes a block of commands for each item in a list.

Example:
```bash
for file in *.log
do
    echo "$file"
done
```

---

### While Loop
```bash
count=1

while [ $count -le 5 ]
do
    echo "$count"
    ((count++))
done
```
Repeats commands while a condition is true.

---

### Arrays
Create an array:
```bash
servers=("web01" "web02" "db01")
```

Print all elements:
```bash
echo "${servers[@]}"
```

Print a single element:
```bash
echo "${servers[0]}"
```

Loop through an array:
```bash
for server in "${servers[@]}"
do
    echo "$server"
done
```

---

### Functions
Define a function:
```bash
system_info() {
    hostname
    whoami
    date
}
```

Call the function:
```bash
system_info
```

Functions allow code to be reused without repetition.

---

### Positional Arguments
```bash
$1
$2
$3
$@
```

Example:
```bash
./script.sh file.txt backup/
```

Inside the script:
- `$1` → `file.txt`
- `$2` → `backup/`

---

### Case Statement
```bash
case "$choice" in
1)
    date
    ;;
2)
    whoami
    ;;
3)
    pwd
    ;;
4)
    exit 0
    ;;
*)
    echo "Invalid option."
    ;;
esac
```

A cleaner alternative to multiple `if-elif` statements.

---

### Exit Codes
Check the exit status of the previous command:
```bash
echo $?
```

Common values:
- `0` → Success
- Non-zero → Error or failure

Exit a script successfully:
```bash
exit 0
```

Exit with an error:
```bash
exit 1
```

---

## Project Completed

### Linux System Toolkit (`system_toolkit.sh`)

Features implemented:
- Interactive menu
- `while` loop for continuous execution
- `case` statement for menu navigation
- Functions for reusable code
- System Information
- Disk Usage
- Memory Usage
- Running Processes
- File Existence Checker
- Exit option
- Invalid input handling

---

## Key Takeaways

- Automate repetitive tasks using loops.
- Use arrays to manage multiple values.
- Write reusable code with functions.
- Pass information into scripts using positional arguments.
- Use `case` for cleaner menu-driven applications.
- Check command success using exit codes.
- Combine loops, functions, and conditions to build interactive Bash tools.
