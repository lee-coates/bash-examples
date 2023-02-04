#!/bin/bash
# These commands helps coordinate ssh connections between machines

# A basic ssh connection can be established with:
ssh [username]@[ip-address]

# On the first connection, you will be asked to verify the Host's key fingerprint
# Fortunately, the key fingerprint should not change unless the target changes its OS
# If you are connecting to a public server, they should post their public key fingerprints somewhere
# If you are the admin of both endpoints, here are some commands to assist verifying the fingerprints
# For SHA256:
ssh-keygen -lf /etc/ssh/ssh_host_key.pub

# For MD5:
ssh-keygen -E md5 -lf /etc/ssh/ssh_host_key.pub

# Ending the Session
logout
