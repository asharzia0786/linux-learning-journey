# Day 06 – Package Management

## Package Management

`sudo apt update`
- Refresh package lists.

`sudo apt upgrade`
- Upgrade installed packages.

`sudo apt full-upgrade`
- Upgrade packages including dependency changes.

`sudo apt install <package>`
- Install a package.

`sudo apt remove <package>`
- Remove a package (keep configuration files).

`sudo apt purge <package>`
- Remove a package and its configuration files.

`sudo apt autoremove`
- Remove unused dependencies.

`sudo apt clean`
- Clear downloaded package cache.

`sudo apt autoclean`
- Remove outdated package cache.

---

## Package Information

`apt search <package>`
- Search for available packages.

`apt show <package>`
- Display package details.

`apt list --installed`
- List installed packages.

`apt policy <package>`
- Show installed and available versions.

---

## DPKG Commands

`dpkg -l`
- List installed packages.

`dpkg -L <package>`
- Show files installed by a package.

`dpkg -S <file>`
- Find which package owns a file.

---

## Verification

`which <command>`
- Show the location of a command.

`<command> --version`
- Display the installed version.

Examples:

`git --version`

`tree --version`

`curl --version`

---

## Repositories

`cat /etc/apt/sources.list`
- View configured repositories.

`ls /etc/apt/sources.list.d/`
- List additional repository files.
