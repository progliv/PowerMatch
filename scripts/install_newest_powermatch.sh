#!/bin/bash

echo "Removing old instance"
cd ~/Documents
rm -rf PowerMatch || true
rm -rf powermatch-venv || true

echo "Pulling newest target_new branch from github"
cd ~/Documents
git clone https://github.com/progliv/PowerMatch.git
echo "cloned branch from progliv"

cd ~/Documents/PowerMatch
python3 -m venv powermatch-venv
sleep 5
source powermatch-venv/bin/activate
sleep 5

pip install --upgrade pip
pip install .
