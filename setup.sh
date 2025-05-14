#!bin bash
#Prompt for Github repo url 
read -p "https://github.com/magusteinmagnus/personalSITE.git):"repo

echo "Initializing Git repository..."
git init
git add .
git commit -m "Initial commit for Magus Personal Site"

echo "Settings up remote Github repository..."
git remote add origin "$repo"
git branch -M main
git push -u origin main

eco ""
echo" Project pushed to Github!"
echo "Now go to https://netlify.com to deploy:"
echo ' click "add new site'>'Import from Github'"
echo "select your repo"
echo "set build command : npm run build"
echo "set publish directory:dist"
echo "done!"

exit 0
