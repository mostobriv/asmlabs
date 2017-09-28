;========= MACROSES =========
%include "macroses/libmacro.mac"
%include "macroses/darwin_syscalls.mac"
;======= END MACROSES =======


section .text
global helloworld

func helloworld
    sys_call sys_write, stdout, hw, hw.len
endfunc


section .data
str hw, "Hello, world!"