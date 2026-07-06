# Day 02 – Linux Users, Groups & Permissions

**Date:** July 7, 2026

---

# Objectives

* Understand Linux users and groups.
* Learn Linux file ownership.
* Understand the Linux permission model (rwx).
* Learn how to use `chmod` to modify permissions.
* Understand the purpose of `chown`.
* Learn when and why to use `sudo`.
* Gain confidence in reading and modifying file permissions.

---

# Environment

* **Operating System:** Ubuntu (WSL2)
* **Host OS:** Windows 11
* **Editor:** Visual Studio Code
* **Terminal:** Ubuntu Terminal

---

# Commands Learned

## User Information

### `whoami`

Displays the currently logged-in user.

```bash
whoami
```

Output:

```
user
```

---

### `groups`

Displays all groups the current user belongs to.

```bash
groups
```

Example Output:

```
user adm cdrom sudo dip plugdev users
```

---

### `id`

Displays the user's UID, GID and all group memberships.

```bash
id
```

Example Output:

```
uid=1000(user)
gid=1000(user)
groups=1000(user),4(adm),24(cdrom),27(sudo)...
```

---

# Viewing Permissions

### `ls -l`

Displays detailed information about files and directories.

```bash
ls -l
```

# Day 02 - Linux Users & Permissions

## User Information

```bash
whoami
```

Shows the current logged-in user.

```bash
groups
```

Shows all groups the current user belongs to.

```bash
id
```

Displays UID, GID and group memberships.

---

## Viewing Permissions

```bash
ls -l
```

Displays detailed file/directory information and permissions.

Permission format:

```
-rwxr-xr--
```

* First character: File type (`-` = file, `d` = directory)
* Owner: `rwx`
* Group: `r-x`
* Others: `r--`

---

## Permission Meanings

```
r = Read
w = Write
x = Execute
```

For directories:

* `r` → View contents
* `w` → Create/Delete files
* `x` → Enter (traverse) the directory

---

## chmod (Change Permissions)

```bash
chmod +x file
```

Add execute permission.

```bash
chmod -x file
```

Remove execute permission.

```bash
chmod 755 file
```

Owner: rwx

Group: r-x

Others: r-x

```bash
chmod 644 file
```

Owner: rw-

Group: r--

Others: r--

```bash
chmod 400 file
```

Owner: Read only

Group: No access

Others: No access

---

## chown (Change Ownership)

```bash
sudo chown user:user file
```

Changes the owner and group of a file or directory.

---

## sudo

```bash
sudo command
```

Runs **one command** with administrator (root) privileges.

Use only when necessary.

---

## Absolute vs Relative Paths

Absolute Path

```text
/app/logs
```

Starts from the root directory.

Relative Path

```text
app/logs
```

Starts from the current directory.

---

## Common Mistakes

❌ `cd..`

✅ `cd ..`

---

❌ `chmod +x`

✅ `chmod +x filename`

---

Removing execute permission from a directory prevents entering it.

---

## Important Notes

* `chmod` changes **permissions**.
* `chown` changes **ownership**.
* Avoid using `777`.
* Understand why `sudo` is needed before using it.
