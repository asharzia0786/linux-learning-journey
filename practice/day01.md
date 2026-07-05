# Day 01 - Linux Fundamentals

**Date:** July 6, 2026

---

# Objectives

- Set up my DevOps development environment
- Learn how Linux organizes files and directories
- Become comfortable navigating the Linux terminal
- Learn basic file and directory management
- Connect my GitHub repository using SSH

---

# Environment Setup

## Operating System
- Windows 11
- WSL2
- Ubuntu

## Development Tools

- Visual Studio Code
- Git
- GitHub
- Ubuntu Terminal

---

# Commands Learned

## Navigation

### pwd
Displays the current working directory.

Example:

```bash
pwd
```

---

### ls

Lists files and directories.

Useful options:

```bash
ls
ls -l
ls -a
ls -la
```

---

### cd

Changes the current directory.

Examples:

```bash
cd
cd ~
cd ..
cd /
```

---

# File & Directory Management

### mkdir

Creates a directory.

```bash
mkdir projects
```

---

### touch

Creates an empty file.

```bash
touch notes.txt
```

---

### cp

Copies files or directories.

```bash
cp file.txt backup.txt
```

---

### mv

Moves or renames files.

```bash
mv old.txt new.txt
```

---

### rm

Deletes files.

```bash
rm file.txt
```

Delete directories recursively:

```bash
rm -r folder
```

⚠️ Be careful. Deleted files usually cannot be recovered.

---

### rmdir

Deletes an empty directory.

```bash
rmdir empty_folder
```

---

# Viewing & Editing Files

### cat

Displays file contents.

```bash
cat notes.txt
```

---

### nano

Simple terminal text editor.

Useful shortcuts:

- CTRL + O → Save
- Enter → Confirm filename
- CTRL + X → Exit

---

# Help Commands

### man

Displays the manual page.

```bash
man ls
```

Exit by pressing:

```
q
```

---

### --help

Quick help for commands.

Example:

```bash
ls --help
```

---

# Linux Filesystem

Important directories:

| Directory | Purpose |
|-----------|---------|
| / | Root directory |
| /home | User home directories |
| /etc | Configuration files |
| /usr | Installed applications |
| /var | Logs and variable data |
| /tmp | Temporary files |
| /bin | Essential system commands |

---

# Concepts Learned

- Linux uses a hierarchical filesystem.
- Everything begins from the root directory (/).
- ~ represents my home directory.
- Linux is case-sensitive.
- Most DevOps work is performed from the terminal.
- WSL2 provides a Linux environment inside Windows.

---

# Git Progress

Completed:

- Git installation
- Git configuration
- GitHub repository creation
- SSH authentication
- First commit
- First push

---

# Challenges Faced

- Setting up GitHub SSH authentication
- Understanding the difference between the Linux root directory and my home directory

---

# Key Takeaways

- The terminal is the primary interface for DevOps engineers.
- Navigation commands become faster with practice.
- Git should be used every day.
- SSH is the preferred authentication method for GitHub.

---

# Practice Completed

- Created directories
- Created files
- Renamed files
- Copied files
- Deleted files
- Used Nano
- Navigated without using the mouse

---

# Questions for Review

- What is the difference between `/` and `~`?
- When should I use `cp` instead of `mv`?
- Why is `rm -r` dangerous?
- What is the difference between an absolute path and a relative path?

---

# Progress

✅ Day 01 Completed
