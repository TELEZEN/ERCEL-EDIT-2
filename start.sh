if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/TELEZEN/ERCEL-EDIT-2.git /ERCEL-EDIT-2
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /ERCEL-EDIT-2
fi
cd /ERCEL-EDIT-2
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
