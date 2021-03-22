# Hello World Program in Bash Shell

# Regular Expression. + (앞문자 1개 이상 반복)
#
# console :
#   match                                                                                                           
#   not match
FORMAT_A="^v[0-9]+\.[0-9]+\.[0-9]+"
echo ""
echo "- (example) concept 1 -"
if [[ "v1.0.0" =~ $FORMAT_A ]]; then echo "match"; else echo "not match"; fi
if [[ "v1.0" =~ $FORMAT_A ]]; then echo "match"; else echo "not match"; fi

# Regular Expression. * (앞문자 0개 이상 반복)
#
# console :
#   match                                                                                                           
#   match
FORMAT_B="^v[0-9]+\.[0-9]+\.*"
echo ""
echo "- (example) concept 2 -"
if [[ "v1.0.0" =~ $FORMAT_B ]]; then echo "match"; else echo "not match"; fi
if [[ "v1.0" =~ $FORMAT_B ]]; then echo "match"; else echo "not match"; fi
