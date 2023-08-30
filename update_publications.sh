#!/bin/zsh

# activate conda web ennvironment
# conda activate web

# This script updates the publications page of my website from my CV

# update the bib files from github CV repo
cd .CV
git pull
cd ..

# concat bib files
cat .CV/presentations.bib .CV/publications.bib > all_publications.bib

# clean up bib file
sed -E '/^[[:space:]]*month[[:space:]]*=/s/[0-9-]//g' all_publications.bib > all_publications_clean.bib
bibtex-tidy --months --tab --align=13 --duplicates=doi --merge=combine --no-escape --sort-fields --no-remove-dupe-fields --generate-keys="[auth:required:lower][year:required][veryshorttitle:lower][duplicateNumber]"  all_publications_clean.bib

# run academic CLI to update publications page
academic import --bibtex all_publications_clean.bib --verbose

# replace Thomas Goelles with admin in all markdown files in the content/publication folder
find content/publication -name "*.md" -exec sed -i '' 's/Thomas Goelles/admin/g' {} +

echo " ! ADD PROJECTS MANUALLY ! "

echo "Done updating publications page."