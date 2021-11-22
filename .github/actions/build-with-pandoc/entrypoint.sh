mkdir -p docs
for file in "markdown/*.md"
do
  filename=`basename $file .md`
  pandoc $file -s -o "docs/$filename.html"
done