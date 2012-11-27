#!/bin/bash
#
#

while getopts "u:h:f:" flag
do 
  echo $flag $OPTARG
  case "$flag" in
    u) 
      user="$OPTARG"
      echo user
      #shift
      ;;
    h) 
      host="$OPTARG"
      echo host
      #shift
      ;;
    f) 
      file="$OPTARG"
      echo file
      #shift
      ;;
  esac
done

[ -z "$file" ] && echo "Missing hosts file" && exit 1
[ -z "$host" ] && echo "Missing host" && exit 1
[ -z "$user" ] && echo "Missing user" && exit 1

grep -v $host $file | ssh $user@$host 'cat - >> /etc/hosts'

