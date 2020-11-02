item="markr-xcode-ios-file-templates"
installDirectory=~/Library/Developer/Xcode/Templates/File\ Templates/
baseAppDirectory="${installDirectory}/${item}"

rm -rfi "${baseAppDirectory}"

mkdir -p "${installDirectory}"

cp -R "${item}" "${installDirectory}"

echo "Templates installed to ${installDirectory}"
