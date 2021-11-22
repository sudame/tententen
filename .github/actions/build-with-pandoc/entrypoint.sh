rm -rf docs
mkdir docs

cp .github/actions/build-with-pandoc/index.md /tmp/

for file in markdown/*.md; do
    filename=`basename $file .md`;
    pandoc $file -s -o "docs/$filename.html";
    echo "- [$filename]($filename.html) " >> /tmp/index.md
done

pandoc /tmp/index.md -s -o "docs/index.html";

