# Day 05 – Processes & Services

## Process Management

`ps`
- Show running processes.

`ps -ax`
- Show all running processes.

`ps aux`
- Show detailed process information (PID, CPU, Memory, User).

`top`
- Live system monitor.

`htop`
- Improved interactive system monitor.

`kill <PID>`
- Gracefully terminate a process.

`kill -9 <PID>`
- Forcefully terminate a process.

`killall <process_name>`
- Kill all processes with the given name.

`pkill <process_name>`
- Kill process(es) matching a name.

`pgrep <process_name>`
- Find the PID of a process.

`pgrep -n <process_name>`
- Get the most recent PID of a process.

---

## Background & Foreground Jobs

`command &`
- Run a command in the background.

`jobs`
- List background jobs.

`fg`
- Bring a background job to the foreground.

`bg`
- Resume a stopped job in the background.

`Ctrl + C`
- Stop the running process.

`Ctrl + Z`
- Suspend the running process.

---

## Services

`systemctl status <service>`
- Check service status.

`systemctl start <service>`
- Start a service.

`systemctl stop <service>`
- Stop a service.

`systemctl restart <service>`
- Restart a service.

`systemctl enable <service>`
- Start a service automatically at boot.

`systemctl disable <service>`
- Disable automatic startup.

---

## Logs

`journalctl`
- View system logs.

`journalctl -n 20`
- Show the latest 20 log entries.

`journalctl -u <service>`
- View logs for a specific service.

`journalctl -f`
- Follow logs in real time.

---

## Useful Commands

`ps -p <PID> -o pid,%cpu,%mem,cmd`
- Display PID, CPU usage, Memory usage, and command for a process.

`ps -ax | grep <name>`
- Search for a running process.

`ps -ax | grep <name> | grep -v grep`
- Search for a process without showing the grep command itself.
