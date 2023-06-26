# exit when any command fails
set -e
cd sdk/python/logger
rm -rf dist/ arize.egg-info/
python3 -m build
python3 -m check_wheel_contents dist/
status=$?
echo $status
if test $status -eq 0;
then
    echo "wheel contents OK.. uploading to PyPI"
    python3 -m twine upload dist/* --verbose
else
    echo "wheel contents not OK; run 'python3 -m check_wheel_contents dist/' and fix error"
fi