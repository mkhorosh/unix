code="#include <stdio.h>
int main(){
printf(\"%s\",\"Hello World!\");
return 0;
}"
touch hw.cpp
echo -e $code > hw.cpp
gcc hw.cpp -o hw
./hw