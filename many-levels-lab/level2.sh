code="#include <stdio.h>\n
int main(){\n
  printf(\"%s\",\"Hello World!\");\n
  return 0;\n
}"
touch hw.cpp
echo -e $code > hw.cpp
gcc hw.cpp -o hw
./hw