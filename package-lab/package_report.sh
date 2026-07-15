echo ========== Pakage Report ==========

echo Git Installed:
if apt list --installed | grep git > /dev/null
then
	echo "Yes"
else
	echo "No"
fi
echo Git Version:
git --version

echo Tree Installed:
if apt list --installed | grep tree > /dev/null
then
        echo Yes
else
        echo No
fi

echo Curl Installed:
if apt list --installed |grep Curl > /dev/null
then
        echo Yes
else
        echo No
fi

echo Installed Packages:
apt list --installed | wc -l


echo "Today's Date: " $(date)

echo ====================================
