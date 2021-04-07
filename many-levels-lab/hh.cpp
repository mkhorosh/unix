//create file level2.sh and make system()
#include <stdio.h>
#include <cstdlib>

int main(){
  FILE *f = fopen("level22.sh", "w");
  if (f == NULL)
    return -1;
  else{
    fprintf(f,"%s","code=\"#include <stdio.h>\nint main(){\nprintf(\\\"%s\\\",\\\"Hello World!\\\");\nreturn 0;\n}\"\ntouch hw.cpp\necho -e $code > hw.cpp\ngcc hw.cpp -o hw\n./hw");
    fclose(f);
    system("bash level22.sh");
  }
  return 0;
}