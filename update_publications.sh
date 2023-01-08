#!/bin/zsh

# This script updates the publications page of my website from my CV

# download bib file from github repo
curl https://raw.githubusercontent.com/tgoelles/CV/master/publications.bib\?token=GHSAT0AAAAAAB4UPPXINVV4W7AHF4P5LPBOY52C5KQ > publications.bib
curl https://raw.githubusercontent.com/tgoelles/CV/master/presentations.bib\?token=GHSAT0AAAAAAB4UPPXIDWUXZQFLIBAGOIJ6Y52C6AA > presentations.bib

# concat bib files
cat presentations.bib publications.bib > all_publications.bib

# run academic CLI to update publications page
academic import --bibtex all_publications.bib --verbose

# replace Thomas Goelles with admin in all markdown files in the content/publication folder
find content/publication -type f -exec sed -i '' 's/Thomas Goelles/admin/g' {} +