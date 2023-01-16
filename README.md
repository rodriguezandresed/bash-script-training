#This repository contains the training environment and notes I used while completing the Bash Script Training by David Bombal



Bash is a shell, that allows us to enter commands and represent them as output

This command allows us to see  which shell we're currently using
 i.e: echo $SHELL 

This command allows us to see where bash is located so we can run it (it shows route, you just have to paste it)
i.e: which bash

Script is a file that has one or more commands inside, that run when executed

bash script files use .sh extension

bash script files need to be set to excecutable (will be seen as green on most distros)
i.e:  sudo chmod +x filename

to excecute the script you type as:
i.e:  ./namefile

you can edit it with nano on linux
i.e:  nano namefile

if it's not with .sh extension, you can know it's a script by the first line being, as it 
understands that it has to run on bash
i.e:  #!/bin/bash

for example a file could have:[

#!/bin/bash
echo "Hello World!"
echo "My current working directory is:"
pwd


]
