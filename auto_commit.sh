for i in {1..50}; do
    printf "\n\n" >> README.md
    echo "Commit $i" >> README.md
    git add README.md
    git commit -m "Add new commit $i"
done

