echo "========== SSH REPORT =========="

echo "Hostname: $(hostname)"
echo "Current User: $(whoami)"
echo "Home Directory: $HOME"

echo "SSH Directory:"
if [ -d ~/.ssh ]
then
	echo "Exists"
else
	echo "Missing"
fi

echo "Private Key:"
if [ -f ~/.ssh/id_ed25519 ]
then
	echo "Exists"
else
	echo "Missing"
fi

echo "Public Key:"
if [ -f ~/.ssh/id_ed25519.pub ]
then
	echo "Exists"
else
	echo "Missing"
fi

echo "Known Hosts:"
if [ -f ~/.ssh/known_hosts ]
then
	echo "Exists"
else
	echo "Missing"
fi

echo "Permissions:"
ls -l ~/.ssh

echo "Current Date: $(date)"

echo "================================"
