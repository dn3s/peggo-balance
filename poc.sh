#!/bin/bash

#A very simple test script that just dumps the JSON representing your peggo
#card/s. Use as a guide for writing something proper.

#this is not secure for use on multi-user systems due to the use of tempfiles
#for the session cookie. The point of this is to demonstrate the concepts and
#document known-good settings, not to be a good implementation.

#NOTE: curl's URL encoding appears to have problems. Avoid the tilde (~)
#character (and maybe others) in usernames and passwords.

#This was made by taking output from Firefox Dev Tools' Net panel, replacing
#key stuff with shell variables, and whittling down the curl params to the bare
#minimum.

username=$1
[[ -z "$username" ]] && echo "usage: $0 <username>" && exit 2

cookie="$(mktemp)"

read -sp "Password for $username: " password

curl 'https://efare.winnipegtransit.com/e-Fare/doLogin.html' \
	--compressed \
	-H 'DNT: 1' \
	--data 'returnUrl=' \
	--data-urlencode "userId=$username" \
	--data-urlencode "password=$password" \
	--cookie-jar "$cookie" \
	--silent > /dev/null

curl 'https://efare.winnipegtransit.com/e-Fare/service/v1/cards/' \
	--cookie "$cookie" \
	--silent

echo

rm $cookie
