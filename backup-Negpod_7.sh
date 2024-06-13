#!/usr/bin/env bash

# Details about the remote server
remote_host="ec1ebc754f75.a5efec7a.alu-cod.online"
remote_username="ec1ebc754f75"
remote_password="ea1d8f222b11d7be18f6"
remote_location="/summative/0524-2024m"

# Create a backup directory with timestamp
backup_dir="negpod_7-q1"

# Copy the directory to the remote server
scp -r $backup_dir $remote_username@$remote_host:$remote_location

echo "Backup completed and stored on the remote server."
