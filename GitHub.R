#Download and install git from https://git-scm.com/

#Get a GitHub account at https://github.com/: sign up and follow the instructions.

# Install the usethis R package (check that Rstudio is updated).
install.packages("usethis")

#Setup GIT, Configure git with your user name and email.

library(usethis)
use_git_config(
  user.name = "manueladurao", 
  user.email = "manfaria@uef.fi"
)


#Generate a GitHub PAT and store it with gitcreds::gitcreds_set(). 
#Then vaccinate git on you computer.


#GitHub needs to validate who you are before you can connect it and RStudio.
#We can do this by generating and saving a Personal Access Token (PAT). 
#You need to do this once for every RStudio project.
usethis::create_github_token()

#This function will open GitHub. After confirming your password, you will be shown a page to make a new PAT. 
#You don’t need to change any of the options. Just click the green “Generate token” button at the bottom of the page.
#The next page will show you your PAT. Copy it by clicking on the clipboard icon and return to R.

#Now run
gitcreds::gitcreds_set()

#this will ask you for your PAT: paste it at the prompt and press return.
#This will save the PAT so that it can be used to access GitHub.
#Treat your PAT as a password - never save it in a script.

#git_vaccinate() will add various files to your global .gitignore file (Section 2.9)
#to reduce the chance of you leaking passwords, making git safer to use.

git_vaccinate()

#Now you are ready to start using RStudio and GitHub. 
#There are two main workflows:
  
#1.Make a new local repo and push it to GitHub
#2.Clone an existing repo from GitHub onto your computer
#We will cover these in turn: choose the best one for your circumstances.

#By default, repositories on GitHub are publicly readable. They can be made private if necessary.

#This workflow is useful if you already have an RStudio project on your computer or are starting a new project.

usethis::use_git()

#If you are making a new RStudio project, tick the “Create a git repository” box in the New Project Wizard.(done)

#in RStudio, create a git repo for your project with:

usethis::use_git()

#After creating the repo, the function will ask whether you want to commit some files.
#If it is a new project, this is safe to agree to.
#If it is an existing project there might be some files that you don’t want to commit,
#for example very large files or files with sensitive information such as passwords. 
#In this case, don’t let R commit everything, instead pick which files you want committed (see Section 2.7) and improve the .gitignore (see Section 2.9) so they cannot be committed by accident.
#Then let RStudio restart so that the git panel is activated.

#Once you have committed at least one file, you can create a repo on GitHub.
library(usethis)
use_github()

#By default, the repo name on GitHub will match the RStudio project name, and the repo will be public.
#Now go to GitHub, find your repo and check the files you committed have been uploaded.

#Create a new RStudio project, set up git on it and agree to commit the files. You should now have a git tab in RStudio.
#Rename the default branch to “main”.
git_default_branch_rename()

#Set up the project to use GitHub, push the committed files and view them on GitHub.



