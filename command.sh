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

#Created the pull request from update_logo into master 
gh pr create --base master --head update_logo --title "Update logo and link to Propeller DirtMate" --body "Replaced the React logo with the supplied Propeller logo and updated the link to the DirtMate page. Verified that the logo displays and the link opens the correct page."

# Open the pull request for inspection
gh pr view --web

#opened the pull request to check 
gh pr view --web

#saved and published the completed command record
git satus 
git add command.sh
git commit -m "Document pull request and merge workflow"
git push orgin update_logo

#Merged pull request 1 into master using GitHub CLI 
gh pr merge 1 --merge

#updated the local master branch after the GitHub merge
git switch master
git pull --ff-only orgin master

#Verfiy the final state
git status 
git --no-pager log --oneline -5
gh pr view 1
