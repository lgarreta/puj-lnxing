
# like the above, but doesn’t try to run wc on directories
for file in *
do
if [ ! -d $file ] #ie: if $file isn’t a directory
then
echo "wc $file gives"
wc $file
else
echo "$file is a directory"
fi
done
