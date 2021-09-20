If you are creating a new set of SSH keys on a home computer, 
and do NOT have access to the SSH keys you created at school or on a different computer, 
AND ssh-copy-id is not available, these instructions are for you! 

1. In FileZilla, log in to the firebelly.newtfire.org, using "Normal" and use our class password.
2. Go in to your remote .ssh directory on newtfire. 
3. Download the authorized_keys file onto your local computer. 
4. Open in a text editor (like Notepad or oXygen, new Text file), your local id_rsa.pub file, and copy the text of this file 
so you can paste it in the authorized_keys file.
5. Open authorized_keys in the text editor. Paste in the id_rsa.pub text so it takes up the last lines in the file. 
(Do NOT delete other public keys you have already in this file or you will block access from your other computer!)
6. Use FileZilla to upload the edited authorized_keys with the new public key info inside: make sure it overwrites the original file in .ssh folder.
7. Go back to the FileZilla settings and configure it to authorize with a Key. Browse to find your local PRIVATE id_rsa file to make the connection.
8. Test your connection with the keys!  
