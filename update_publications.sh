#!/bin/zsh

# This script updates the publications page of my website from my CV

# download bib file from github repo
curl https://raw.githubusercontent.com/tgoelles/CV/master/publications.bib\?token=GHSAT0AAAAAAB4UPPXIHQLKSRNICJVD4GUQY6BCZNA > publications.bib
curl https://raw.githubusercontent.com/tgoelles/CV/master/presentations.bib\?token=GHSAT0AAAAAAB4UPPXIHQLKSRNICJVD4GUQY6BCZNA > presentations.bib

# concat bib files
cat presentations.bib publications.bib > all_publications.bib

# run academic CLI to update publications page
academic import --bibtex all_publications.bib --verbose

# replace Thomas Goelles with admin in all markdown files in the content/publication folder
find content/publication -name "*.md" -exec sed -i '' 's/Thomas Goelles/admin/g' {} +

echo "Done updating publications page."