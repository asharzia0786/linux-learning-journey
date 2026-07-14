echo ========== SERVER HEALTH REPORT ==========
echo "Date: " $(date)

echo "Logged in user: " $(whoami)

echo "Current directory: " $(pwd)

echo "Running sleep processes: "
ps aux | grep sleep | grep -v grep

echo "Memory Usage: "
free -h

echo "Disk Usage: "
df -h

echo "Top 5 Running Processes:"
ps -aux | head -n 6

if !(ps aux | grep sleep | grep -v grep) < /dev/null
then
	echo "Server Status: Healthy ✅"
else
	echo "Server Status: Monitoring Required ⚠️"
fi
echo ==========================================
