#!/bin/zsh

# This script updates the publications page of my website from my CV

# download bib file from github repo
# Todo automatic donwload from github
#curl https://raw.githubusercontent.com/tgoelles/CV/master/publications.bib\?token=GHSAT0AAAAAACFXC4UVVZQMWB6HBW2COJ3QZHOEGEQ > publications.bib
#curl https://raw.githubusercontent.com/tgoelles/CV/master/presentations.bib?token=GHSAT0AAAAAACFXC4UU2LD5Y5BYEFKDTXXKZHOEHEQ > presentations.bib

# concat bib files
cat presentations.bib publications.bib > all_publications.bib

# clean up bib file
bibtex-tidy --months --tab --align=13 --duplicates=key --no-escape --sort-fields --no-remove-dupe-fields --generate-keys="[auth:required:lower][year:required][duplicateNumber]" all_publications.bib


# run academic CLI to update publications page
academic import --bibtex all_publications.bib --verbose

# replace Thomas Goelles with admin in all markdown files in the content/publication folder
find content/publication -name "*.md" -exec sed -i '' 's/Thomas Goelles/admin/g' {} +

echo "Done updating publications page."