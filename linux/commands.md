Display name and pid of process in use  
> echo $0  
> echo $$  

Local variable declaration (available only to that shell environment)  
> variable="string"  
> echo $variable  

Make variable available to child processes  
> export variable="string"  

Print list of environment variables  
> env  

Add path to PATH env-variable to "shortcut" call executable  
> PATH=$PATH:/\<path-to-add>   

Display aliases  
> alias  
> alias \<command>  

Change alias  
> alias \<name>=\<command>  
> example: alias ls="ls -lah --color-auto"  

Print history command  
> history  
  
Delete history  
> history -c  

Open reverse search in history  
> CTRL+R  

Display folders (parent/children) as tree  
> tree  

Create folders parent/child  
> mkdir parent/child -p  

Search in man  
> /\<keyword>  

"slow" read  
> cat \<file> | less    

List folder content with dimensions  
> du \<folder>  
  
List folder content by increasing dimensions  
> du \<folder> | sort -u  

Print list with only first column  
> cat \<file> | cut -d \<delimiter> -f1  
  
Count number of occurencies  
> cat \<file> | cut -d \<delimiter> -f1 | wc -l  

Pass arguments to script  
> var=$1 (first parameter), var2=$2 (second param)...  

If statement  
```
if [[ $var == \<something> ]]
then
	echo 1
else
	echo 2
fi
```

For loop  
```
for \<var> in \<range>
do
	echo $var
done
```

Print exit status code of last command  
> echo $?

Display computer components information  
> lsblk = mass storage devices  
> ifconfig \\ ip addr = network  
> lsusb = usb devices  
> cat /proc/cpuinfo = CPU info  
> cat /proc/meminfo \\ free -m = RAM info  
> lspci = PCI devices  

Display connected users  
> who
> w

Add folders/files in home folder for new users  
> /etc/skel/

Display group members  
> getent group | grep \<group name>
