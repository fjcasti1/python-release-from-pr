for i in {1..50}; do
    echo "Commit $i" >> README.md
    git add README.md
    git commit -m "Add commit $i"
done

