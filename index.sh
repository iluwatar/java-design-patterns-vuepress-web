echo "---" >> README.md
echo "language: $1" >> README.md
echo "title: $2" >> README.md
echo "shortTitle: $3" >> README.md
echo "description: $4" >> README.md
echo "---" >> README.md
echo "" >> README.md

if [ "$1" = "en" ]; then
    echo "## Get the E-Book" >> README.md
    echo "" >> README.md
    echo "Get the entire catalog now as a convenient e-book – your ultimate resource in one download! 📚✨ Follow [this link](https://java-design-patterns.com/book) to get started!" >> README.md
    echo "" >> README.md
    echo "## Read Online" >> README.md
    echo "" >> README.md
fi

echo "<ul>" >> README.md
for dir in *; do
    if [ -d "$dir" ] && [ "$dir" != "localization" ]; then
        title=$( grep "shortTitle: " $dir/README.md | cut -d " " -f2- )
        echo "<li><a href="$dir">$title</a></li>" >> README.md
    fi
done
echo "</ul>" >> README.md
