echo "<ul>" >> README.md
for dir in *; do
    if [ -d "$dir" ] && [ "$dir" != "localization" ]; then
        title=$( grep "title: " $dir/README.md | cut -d " " -f2- )
        echo "<li><a href="$dir">$title</a></li>" >> README.md
    fi
done
echo "</ul>" >> README.md
