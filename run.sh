# Remove some caches

rm -rf ~/Library/Caches/*

# By default mac will enable the swap memory and does not compress any data to optimize the use of memory ram
# So we will disable the swap memory to only use the memory ram and enabled the data compress
# This example will set nvram mode to default: sudo nvram boot-args="vm_compressor=4
# https://gist.github.com/ayltai/eaef3ba7577f980beafecf827d645710#file-vm_pageout-h

echo "Current nvram mode: $(sysctl -a vm.compressor_mode)"
sudo nvram boot-args="vm_compressor=2"
