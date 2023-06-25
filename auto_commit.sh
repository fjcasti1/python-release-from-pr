for minor in {0..9}; do
    for patch  in {0..5}; do
        version="0.${minor}.${patch}"
      echo "__version__ = \"${version}\"" > my_helper_package/src/ilsadvbisnvavojebaij/__init__.py
      printf "\n\n" >> README.md
      echo "New commit: Bump to version ${version}" >> README.md
      git add README.md
      git add my_helper_package/src/ilsadvbisnvavojebaij/__init__.py
      git commit -m "Bump to version ${version}"
    done
done

