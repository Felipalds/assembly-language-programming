gdb -q a02e01.x 
Reading symbols from a02e01.x...
(No debugging symbols found in a02e01.x)
(gdb) run
Starting program: /home/luizfelipefonsecarosa/github/assembly-language-programming/02/programStructure/a02e01.x 
[Inferior 1 (process 139276) exited normally]
(gdb) r
Starting program: /home/luizfelipefonsecarosa/github/assembly-language-programming/02/programStructure/a02e01.x 
[Inferior 1 (process 139315) exited normally]
(gdb) b fim
Breakpoint 1 at 0x401000
(gdb) r
Starting program: /home/luizfelipefonsecarosa/github/assembly-language-programming/02/programStructure/a02e01.x 

Breakpoint 1, 0x0000000000401000 in _start ()
(gdb) c
Continuing.
[Inferior 1 (process 141529) exited normally]
(gdb) r
Starting program: /home/luizfelipefonsecarosa/github/assembly-language-programming/02/programStructure/a02e01.x 

Breakpoint 1, 0x0000000000401000 in _start ()
(gdb) x /b &v1
0x402000:       85
(gdb) x /xb &v1
0x402000:       0x55
(gdb) x /bb &v1
0x402000:       0x55
(gdb) x /tb &v1
0x402000:       01010101
(gdb) 

Breakpoint 1, 0x0000000000401000 in _start ()
(gdb) x /b &v1
0x402000:       85
(gdb) x /xb &v1
0x402000:       0x55
(gdb) x /bb &v1
0x402000:       0x55
(gdb) x /tb &v1
0x402000:       01010101
(gdb) x /bb &v1
0x402000:       01010101
(gdb) x /xb 0x402000
0x402000:       0x55
(gdb) x /xb 0x402001
0x402001:       0x55
(gdb) x /xb 0x402002
0x402002:       0x56
(gdb) x /xb 0x402003
0x402003:       0x57
(gdb) x /xb 0x402004
0x402004:       0x61
(gdb) x /c  0x402004
0x402004:       97 'a'
(gdb) x /cb  0x402004
0x402004:       97 'a'
(gdb) x /cb  0x402004
0x402004:       97 'a'
(gdb) x /cb  &v3
0x402004:       97 'a'
(gdb) x /db  &v3
0x402004:       97
(gdb) x /ob  &v3
0x402004:       0141
(gdb) 

0x402004:       0x61
(gdb) x /c  0x402004
0x402004:       97 'a'
(gdb) x /cb  0x402004
0x402004:       97 'a'
(gdb) x /cb  0x402004
0x402004:       97 'a'
(gdb) x /cb  &v3
0x402004:       97 'a'
(gdb) x /db  &v3
0x402004:       97
(gdb) x /ob  &v3
0x402004:       0141
(gdb) x /cb  &v4
0x402006:       104 'h'
(gdb) x /sb  &v4
0x402006:       "hello\r\n$4\022a"
(gdb) x /cb  &v4
0x402006:       104 'h'
(gdb) x /s  &v4
0x402006:       "hello\r\n$4\022a"
(gdb) x /db &v5
0x40200e:       52
(gdb) x /xb &v5
0x40200e:       0x34
(gdb) x /dh &v5
0x40200e:       4660
(gdb) x /xh &v5
0x40200e:       0x1234
(gdb) 