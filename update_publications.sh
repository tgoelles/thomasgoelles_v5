#!/bin/zsh

# This script updates the publications page of my website from my CV

# concat bib files
cat /Users/work/Documents/code/CV/publications.bib /Users/work/Documents/code/CV/presentations.bib > all_publications.bib

# clean up bib file
sed -E '/^[[:space:]]*month[[:space:]]*=/s/[0-9-]//g' all_publications.bib > all_publications_clean.bib
bibtex-tidy --months --tab --align=13 --duplicates=doi --merge=combine --no-escape --sort-fields --no-remove-dupe-fields --generate-keys="[auth:required:lower][year:required][veryshorttitle:lower][duplicateNumber]"  all_publications_clean.bib

# run academic CLI to update publications page
uv tool run academic import --bibtex all_publications_clean.bib --verbose content/publication

# Convert CSL publication types to numeric types (Wowchemy v5 format)
find content/publication -name "index.md" -exec sed -i '' \
  -e 's/publication_types:/publication_types:/g' \
  -e 's/- article-journal/- '\''2'\''/g' \
  -e 's/- paper-conference/- '\''1'\''/g' \
  -e 's/- book/- '\''5'\''/g' \
  -e 's/- chapter/- '\''6'\''/g' \
  -e 's/- thesis/- '\''7'\''/g' \
  -e 's/- report/- '\''4'\''/g' \
  -e 's/- manuscript/- '\''3'\''/g' \
  -e 's/- article/- '\''2'\''/g' {} +

# replace Thomas Goelles with admin in all markdown files in the content/publication folder
find content/publication -name "*.md" -exec sed -i '' 's/Thomas Goelles/admin/g' {} +

echo " ! ADD PROJECTS MANUALLY ! "

echo "Done updating publications page."