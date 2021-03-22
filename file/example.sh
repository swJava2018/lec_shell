# Hello World Program in Bash Shell

# console : 
# Hello World!
echo ""
echo "- (example) echo -"
echo "Hello World!"

# console : 
# a_config.txt  b_config.txt
echo ""
echo "- (example) create file -"
echo 'version: v1.0.0' > a_config.txt
echo 'version: v1.0.0' > b_config.txt
ls

# console : 
# version: v1.0.0                                                                                                 
# version: v1.0.0
echo ""
echo "- (example) read file -"
cat a_config.txt
cat b_config.txt

# console :
# version: v1.0.0-rc.1                                                                                            
# version: v1.0.0-rc.1
echo ""
echo "- (example) modify specific word in file -"
TAG_A="v1.0.0-rc.1"
TAG_B="v1.0.0-rc.1/qa"
sed -i 's/'${TAG_A%-*}'/'${TAG_A%/*}'/' a_config.txt
sed -i 's/'${TAG_B%-*}'/'${TAG_B%/*}'/' b_config.txt
cat a_config.txt
cat b_config.txt

# console :
# this is RC version
echo ""
echo "- (example) if condition -"
RC_FORMAT="^v[0-9]+\.[0-9]+\.[0-9]+-rc\.[0-9]+.*"
if [[ ${TAG_A%/*} =~ $RC_FORMAT ]]; then
    echo "this is rc version"
else
    echo "this is not rc version"
fi
