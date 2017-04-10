cd
for file in .?*
do
  case $file in
   .kshrc) echo "You have a Korn   Shell set-up file";;
  .bashrc) echo "You have a Bash Shell set-up file";;
  .Xdefaults) echo "You have an X resource file";;
  .profile) echo "You have a shell login file";;
  esac
done
