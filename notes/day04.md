# Day 04 - Bash Scripting Basics

## Creating a Script

```bash
#!/bin/bash
```

Defines the Bash interpreter.

---

## Making a Script Executable

```bash
chmod +x script.sh
```

Gives execute permission to the script.

---

## Running a Script

```bash
./script.sh
```

Executes the script.

---

## Variables

```bash
name="Ashar"
```

Creates a variable.

```bash
echo "$name"
```

Prints the variable's value.

---

## Command Substitution

```bash
current_user=$(whoami)
```

Stores the output of a command inside a variable.

Example:

```bash
today=$(date)
errors=$(grep -c "ERROR" app.log)
```

---

## User Input

```bash
read name
```

Reads input from the user.

```bash
read -p "Enter your name: " name
```

Displays a prompt before taking input.

---

## Command-Line Arguments

```bash
$1
```

First argument.

```bash
$2
```

Second argument.

```bash
$#
```

Number of arguments passed.

Example:

```bash
./script.sh app.log
```

Inside the script:

```bash
echo "$1"
```

---

## If Statement

```bash
if [ condition ]
then
    commands
else
    commands
fi
```

Executes commands based on a condition.

Common tests:

```bash
-f
```

Checks if a regular file exists.

```bash
-d
```

Checks if a directory exists.

```bash
-e
```

Checks if a file or directory exists.

---

## Exit Status

```bash
echo $?
```

Displays the exit status of the previous command.

```bash
exit 0
```

Successful execution.

```bash
exit 1
```

Execution failed.

---

## Useful Example

```bash
if [ -f "$1" ]
then
    echo "File exists."
else
    echo "File not found."
    exit 1
fi
```

Checks whether the file provided as the first argument exists.

---

## Important Notes

* Always quote variables: `"$variable"`.
* Use `$(command)` to store command output.
* `$1`, `$2`, etc. represent command-line arguments.
* `read -p` allows interactive user input.
* `chmod +x` is required before running a script with `./script.sh`.
* Exit code `0` means success, while any non-zero value indicates an error.
* Use descriptive variable names such as `filename`, `error_count`, or `current_user`.
