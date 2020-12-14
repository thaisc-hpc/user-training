import os
hostname = os.popen("hostname")
hostname_R = hostname.read()
print ("Your job run on:  ", hostname_R)

