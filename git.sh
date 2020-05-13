#!/bin/bash
clear
read -p "Have you created your repository on github.com? [y/n]" -n 2 answer
while [ true ]
do
    if [ "$answer" = "y" ] || [ "$answer" = "Y" ]; then
        echo
        break
    elif [ "$answer" = "n" ] || [ "$answer" = "N" ]; then
        echo
        echo "Please go to github.com and build your tank !!!"
        read
        exit
    else
        echo
        echo "You can only use y / n"
        exit
    fi
done
apt install git
echo
echo "git is installed"
echo
read -p "Enter your project path : " project_path
cd $project_path
git init
echo
echo "The .git file was created"
echo
git add .
echo
echo "All files are attached to the stage"
echo
read -p "We need a message to commit files within the stage. Please enter your message : " message
echo
git commit -m "$message"
echo "All files were committed"
read -p "To create a remote, we need the URL of your github account holder. Please enter your tank URL : " URL
echo
git remote add origin $URL
echo
read -p "To upload a project to github.com, we need to know your branch name. Please enter your branch name : "branch
echo
git push -u origin $branch
echo
echo
echo "it is finished . I hope you enjoyed :)"
