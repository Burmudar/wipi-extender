#!/bin/bash

if [[ ! -d venv ]]; then
    echo "First run. Creating virtualenv"
    python3 -m venv venv
    venv/bin/pip install -r requirements.txt
fi

echo "Running playbook for WiFi Access point setup"
venv/bin/ansible-playbook -i inventory.yml -k run.yml