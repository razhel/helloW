 ps -ax |grep dash |awk '{print $1;}' > /tmp/dash_process
  cat 206_varnish |awk '{print $7;}' | grep dash|awk  -F'/' '{print $6;}'

  
#sa bledy ale dziala
 for word in $(cat /tmp/dash_process); do kill $word; done
====================== 
 to extract the contents of a gzip file:

gzip -d file.gz

====================== 
   91  git init
   92  git status
   93  git add .
   94  git status
   95  git commit -m "added hello world"
   96  git remote add origin https://github.com/razhel/helloW.git
   97  git push -u origin master
git config --global user.name razhel
git config --global user.email  flipmode@wp.tv

   36  git branch NewBranch
   40  git checkout NewBranch
   44  git add .
   45  git commit -m "added test2"
   46  git status
   47  git push -u origin NewBranch
   55  git checkout master
   57  git merge NewBranch
   59  git push -u origin master
		git branch -d  NewBranch
		git push origin --delete NewBranch
git tag -a v1.1 -m "test tag"
 git show v1.0
 git push origin v1.1


====================== 


docker pull alpine
docker rmi docker.io/hello-world

docker start  `docker ps -q -l` # restart it in the background
docker attach `docker ps -q -l` # reattach the terminal & stdin

docker run --name my-nginx -d -p 90:80 -v /tmp/nginx.conf:/etc/nginx/nginx.conf:ro nginx:1.13.6-alpine  # -d  to run as a deamon, ro read only; 
docker exec --ti  --rm my-nginx /bin/sh   #--rm - remove after use
docker run -ti --rm alpine /bin/sh

Dockerfile
	FROM nginx:1.10.1-alpine
	MAINTAINER me@example.com
	COPY ./nginx.conf  /etc/nginx/nginx.conf
#In Centos:
	ENV http_proxy=ip:3128 
	ENV https_proxy=ip:3128
#In Ubuntu:
	ENV http_proxy 'http://ip:3128'
	ENV https_proxy 'http://ip:3128'
	
	RUN apk update && \
        apk add vim && \
        apk add git && \
        apk add curl
--
#In coreos, for example to pull the image
cat /etc/systemd/system/docker.service.d/http-proxy.conf
[Service]
Environment="HTTP_PROXY=http://192.168.0.193:3128"
--



docker build -t zip-nginx:1.0 .
docker images --filter  "dangling=true"




====================== 

less

&dns will display only lines that match the pattern dns, and &!dns will filter out (exclude) those lines, displaying only lines that don't match the pattern.
&arp.*eth0 will display lines containing arp followed by eth0
&arp|dns  will display lines containing arp or dns


====================== 
ssh hiveenc20.digihive.uk.redbeemedia.net   'rm /opt/demctl/etc/demctl.state_hostgroup'
======================
sed '/likegeeks/s/bash/csh/' /etc/passwd     zmiana tylko w lini ktora ma likegeeks

sed '2,3d' myfile		delete from the third line to the end of the file.
sed '/second/,/fourth/d' myfile			delete a range of lines, you can use two text patterns like this:

echo "Another test" | sed 'i\First test '		text is added before the specified line.
echo "Another test" | sed 'a\First test '		text is added after the specified line.
sed '2i\This is the inserted line.' myfile		text is added after 2nd line; 2a -after
sed '3c\This is a modified line.' myfile		replace a specific (3rd) line 
sed 'y/123/567/' myfile							1->5, 2->6,...applied to all data
sed -n '/test/=' myfile							displays the line number that contains matching.

Sed '/DATA>/ {
r newfile
d}' myfile										placeholder location is filled with the data from the other file
======================



to recall the last argument of the previous command.

You can use $_ or !$ 

Also esc-. or alt+.

It cycles through the previous arguments you used.

======================
grep -Ev 'def|jkl' filename.txt   ==   egrep -v '(def|jkl)' filename.txt

======================
The "F" key when running less will do a "follow" similar to tail -f
======================

 while read line; do zgrep  "$line" access_log-20170724.gz|grep -v 'HTTP/1.1" 200 '; done < timeouts_23
======================

How can I delete a word backward at the command line? I'm truly used to some editors deleting the last 'word' using Ctrl+Backspace,

Alt+Backspace works for me in bash and zsh.
======================
 Editing Shortcuts

    Ctrl + a – go to the start of the command line
    Ctrl + e – go to the end of the command line
    Ctrl + k – delete from cursor to the end of the command line
    Ctrl + u – delete from cursor to the start of the command line
    Ctrl + w – delete from cursor to start of word (i.e. delete backwards one word)
    Ctrl + y – paste word or text that was cut using one of the deletion shortcuts (such as the one above) after the cursor
    Ctrl + xx – move between start of command line and current cursor position (and back again)
    Alt + b – move backward one word (or go to start of word the cursor is currently on)
    Alt + f – move forward one word (or go to end of word the cursor is currently on)
    Alt + d – delete to end of word starting at cursor (whole word if cursor is at the beginning of word)
    Alt + c – capitalize to end of word starting at cursor (whole word if cursor is at the beginning of word)
    Alt + u – make uppercase from cursor to end of word
    Alt + l – make lowercase from cursor to end of word
    Alt + t – swap current word with previous
    Ctrl + f – move forward one character
    Ctrl + b – move backward one character
    Ctrl + d – delete character under the cursor
    Ctrl + h – delete character before the cursor
    Ctrl + t – swap character under cursor with the previous one

Command Recall Shortcuts

    Ctrl + r – search the history backwards
    Ctrl + g – escape from history searching mode
    Ctrl + p – previous command in history (i.e. walk back through the command history)
    Ctrl + n – next command in history (i.e. walk forward through the command history)
    Alt + . – use the last word of the previous command

Command Control Shortcuts

    Ctrl + l – clear the screen
    Ctrl + s – stops the output to the screen (for long running verbose command)
    Ctrl + q – allow output to the screen (if previously stopped using command above)
    Ctrl + c – terminate the command
    Ctrl + z – suspend/stop the command

	
======================
B3stW1nterEver
hivesnfs01
=====================
find . -mtime +1 -exec du -ks {} \; | cut -f1 | awk '{total=total+$1}END{print total/1024}' 
 find . -mtime +20 -exec du -ch {} + | grep total$
 
 
=====================
find /stornext/C4_GENERAL/NON-LINEAR-PACKAGING/SKY/ -type f -mtime +40 | awk '{print "rm -f " $line}' >/tmp/a
======================

mywiki.wooledge.org/BashGuide
steve-parker.org/sh/first.shtml
tldp.org/LDP/Bash-Beginners-Guide/html/
tldp.org/HOWTO/Bash-Prog-Intro-HOWTO.html
tldp.org/LDP/abs/html/
https://likegeeks.com/sed-linux/

for i in `find .`; do grep Warning $i /dev/null; done


find ./ -name "*" -ctime +90 -exec gzip {} \;
find ./ -name "*" -ctime +60 -exec mv {} backup \;
find ./ -name "*" -ctime +60 | xargs -i mv "{}" backup
find ./ -name "gz"  | xargs -i mv "{}" backup

find /path/to/file -type f | xargs -i mv "{}" /path/to/move

find /home/db01i19/db01i19/NODE0000/SQL00001/SQLOGDIR -mtime +30 -type d -print0 | xargs -r -0 ls -l


 for i in `zgrep "Not enough disk" * | cut -d' ' -f10 |grep -Eo "[0-9]{1,}" | sort --uniq`; do zgrep $i * | grep "PackageNotifyMessage" | sort --uniq > /tmp/$i-packageNotify.txt; done
 
 
 
 date --set='10 seconds ago'
 =====
 for file in *.png; do mv "$file" "${file/_h.png/_half.png}"; done
 ===========
 
 In both bash and zsh, you can also use fc -s like this:

$ echo foo foo
foo foo
$ fc -s foo=bar
echo bar bar
bar bar

================

 
 
 
Extensive experience of supporting Linux platforms
Scripting skills - Bash, Python, Ruby
Experience with automation tools such as puppet, Ansible, Jenkins, VMWARE and AWS
Experience supporting Apache, tomcat Jboss, NginX
Experience with MySQL 
