# Day 08 - SSH & Remote Access

## Commands Learned

### Show hostname
```bash
hostname
```
Displays the hostname of the current machine.

---

### Show current user
```bash
whoami
```
Displays the currently logged-in user.

---

### Show home directory
```bash
echo $HOME
```
Displays the current user's home directory.

---

### List SSH directory
```bash
ls -la ~/.ssh
```
Lists SSH-related files (keys, known_hosts, config).

---

### View public SSH key
```bash
cat ~/.ssh/id_ed25519.pub
```
Displays the public key (safe to share).

---

### Test GitHub SSH authentication
```bash
ssh -T git@github.com
```
Tests whether SSH authentication with GitHub is working.

---

### Check if a directory exists
```bash
[ -d ~/.ssh ]
```
Returns true if the directory exists.

---

### Check if a file exists
```bash
[ -f ~/.ssh/id_ed25519 ]
```
Returns true if the file exists.

---

### View file permissions
```bash
ls -l ~/.ssh
```
Displays permissions, owner, and group of SSH files.

---

### View detailed permissions
```bash
stat -c "%A" ~/.ssh
```
Displays only the permission bits of a file or directory.

---

### Fix SSH permissions
```bash
chmod 700 ~/.ssh
chmod 600 ~/.ssh/id_ed25519
chmod 644 ~/.ssh/id_ed25519.pub
```
Sets secure permissions required for SSH.

---

### Show current date
```bash
date
```
Displays the current system date and time.

---

## Concepts Learned

- What SSH (Secure Shell) is
- SSH Client vs SSH Server
- Password authentication vs SSH key authentication
- Public key vs Private key
- Purpose of the `known_hosts` file
- Why private keys must never be shared
- Why GitHub uses SSH keys for authentication
- Importance of correct SSH file permissions
- Basic SSH reporting with Bash scripts
