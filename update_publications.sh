#!/bin/zsh

# This script updates the publications page of my website from my CV

# download bib file from github repo
curl -s https://github.com/tgoelles/CV/blob/master/presentations.bib > presentations.bib
curl -s https://github.com/tgoelles/CV/blob/master/publications.bib > publications.bib

# concat bib files
cat presentations.bib publications.bib > all_publications.bib

# run academic CLI to update publications page
academic import --bibtex all_publications.bib