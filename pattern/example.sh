# Hello World Program in Bash Shell

echo ""
VAL="boys, be ambitious"
echo $VAL

# Pattern Concept 1. 오른쪽부터 가장 짧게 매칭되는 패턴을 제거
#   ${variable%pattern}
#
# console :
#   boys, be ambitious 
#   boys, be 
#   boys, be am 
#   boys, be ambitiou 
#   boys, be ambit
echo ""
echo "- (example) concept 1 -"
echo ${VAL%am*s}
echo ${VAL%b*s}
echo ${VAL%s}
echo ${VAL%i*s}

# Pattern Concept 2. 오른쪽부터 가장 길게 매칭되는 패턴을 제거
#   ${variable%%pattern}
# console :
# boys, be                                                                                                        
#                                                                                                             
# boys, be ambitiou                                                                                               
# boys, be amb
echo ""
echo "- (example) concept 2 -"
echo ${VAL%%am*s}
echo ${VAL%%b*s}
echo ${VAL%%s}
echo ${VAL%%i*s}

# Pattern Concept 3. 왼쪽부터 가장 짧게 매칭되는 패턴을 제거
#   ${variable#pattern}

# Pattern Concept 4. 왼쪽부터 가장 길게 매칭되는 패턴을 제거
#   ${variable##pattern}
