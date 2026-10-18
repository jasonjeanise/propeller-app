#creates a project folder
mkdir react-projects
cd react-projects

#cereates and enters the react app
npx.cmd create-react-app@latest propeller-app
cd propeller-app

#starts the dev server
npm.cmd start

#Initalized the projects Git repository 
git init -b master

#Configured the autheor identity for the repository
git config user.name "Jason Jeanise" 
git config user.email "113814363+jasonjeanise@users.noreply.github.com"

#Saved the initial react app
git add .
git status
git diff --cached --stat
git commit -m "Inital React application"
git status

# Created the public GitHub repsoitory and uploaded the initial commit
gh repo create propeller-app --public --source=. --remote=orgin --push

#Opened the repositry in a web browser
gh repo view --web

#https://github.com/jasonjeanise/propeller-app

# Created and switched to the branch for the logo and link changes
git switch -c update_logo

# Checked the active branch and pending changes
git branch --show-current
git status

# Reviewed the logo and link changes
git branch --show-current
git status
git --no-pager diff -- src/App.js

# Saved adn published the update_logo changes
git add src/App.js command.sh
git diff --cahced --stat
git commit -m "Update logo and link to Propeller DirtMate"
git push -u orgin update_logo
git status

