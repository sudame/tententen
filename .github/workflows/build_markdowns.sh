for file in "markdown/*.md"
do
  filename=`basename $file .md`
  pandoc $file -s -o "html/$filename.html"
done