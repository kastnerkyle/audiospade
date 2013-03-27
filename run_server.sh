#!/bin/bash
source venv/bin/activate
while [ 1 ]; do
    nohup sudo venv/bin/python flask-bootstrap/app.py 2>&1 >> nohup.out
    sleep 5
done
