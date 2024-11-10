
file:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 c1 2f 00 00 	mov    0x2fc1(%rip),%rax        # 3fd0 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <puts@plt-0x10>:
    1020:	ff 35 ca 2f 00 00    	push   0x2fca(%rip)        # 3ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 cc 2f 00 00    	jmp    *0x2fcc(%rip)        # 3ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <puts@plt>:
    1030:	ff 25 ca 2f 00 00    	jmp    *0x2fca(%rip)        # 4000 <puts@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	push   $0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001040 <__stack_chk_fail@plt>:
    1040:	ff 25 c2 2f 00 00    	jmp    *0x2fc2(%rip)        # 4008 <__stack_chk_fail@GLIBC_2.4>
    1046:	68 01 00 00 00       	push   $0x1
    104b:	e9 d0 ff ff ff       	jmp    1020 <_init+0x20>

Disassembly of section .text:

0000000000001050 <_start>:
    1050:	f3 0f 1e fa          	endbr64 
    1054:	31 ed                	xor    %ebp,%ebp
    1056:	49 89 d1             	mov    %rdx,%r9
    1059:	5e                   	pop    %rsi
    105a:	48 89 e2             	mov    %rsp,%rdx
    105d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1061:	50                   	push   %rax
    1062:	54                   	push   %rsp
    1063:	45 31 c0             	xor    %r8d,%r8d
    1066:	31 c9                	xor    %ecx,%ecx
    1068:	48 8d 3d da 00 00 00 	lea    0xda(%rip),%rdi        # 1149 <main>
    106f:	ff 15 4b 2f 00 00    	call   *0x2f4b(%rip)        # 3fc0 <__libc_start_main@GLIBC_2.34>
    1075:	f4                   	hlt    
    1076:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    107d:	00 00 00 
    1080:	48 8d 3d 99 2f 00 00 	lea    0x2f99(%rip),%rdi        # 4020 <__TMC_END__>
    1087:	48 8d 05 92 2f 00 00 	lea    0x2f92(%rip),%rax        # 4020 <__TMC_END__>
    108e:	48 39 f8             	cmp    %rdi,%rax
    1091:	74 15                	je     10a8 <_start+0x58>
    1093:	48 8b 05 2e 2f 00 00 	mov    0x2f2e(%rip),%rax        # 3fc8 <_ITM_deregisterTMCloneTable@Base>
    109a:	48 85 c0             	test   %rax,%rax
    109d:	74 09                	je     10a8 <_start+0x58>
    109f:	ff e0                	jmp    *%rax
    10a1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    10a8:	c3                   	ret    
    10a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    10b0:	48 8d 3d 69 2f 00 00 	lea    0x2f69(%rip),%rdi        # 4020 <__TMC_END__>
    10b7:	48 8d 35 62 2f 00 00 	lea    0x2f62(%rip),%rsi        # 4020 <__TMC_END__>
    10be:	48 29 fe             	sub    %rdi,%rsi
    10c1:	48 89 f0             	mov    %rsi,%rax
    10c4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    10c8:	48 c1 f8 03          	sar    $0x3,%rax
    10cc:	48 01 c6             	add    %rax,%rsi
    10cf:	48 d1 fe             	sar    %rsi
    10d2:	74 14                	je     10e8 <_start+0x98>
    10d4:	48 8b 05 fd 2e 00 00 	mov    0x2efd(%rip),%rax        # 3fd8 <_ITM_registerTMCloneTable@Base>
    10db:	48 85 c0             	test   %rax,%rax
    10de:	74 08                	je     10e8 <_start+0x98>
    10e0:	ff e0                	jmp    *%rax
    10e2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    10e8:	c3                   	ret    
    10e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    10f0:	f3 0f 1e fa          	endbr64 
    10f4:	80 3d 25 2f 00 00 00 	cmpb   $0x0,0x2f25(%rip)        # 4020 <__TMC_END__>
    10fb:	75 33                	jne    1130 <_start+0xe0>
    10fd:	55                   	push   %rbp
    10fe:	48 83 3d da 2e 00 00 	cmpq   $0x0,0x2eda(%rip)        # 3fe0 <__cxa_finalize@GLIBC_2.2.5>
    1105:	00 
    1106:	48 89 e5             	mov    %rsp,%rbp
    1109:	74 0d                	je     1118 <_start+0xc8>
    110b:	48 8b 3d 06 2f 00 00 	mov    0x2f06(%rip),%rdi        # 4018 <__dso_handle>
    1112:	ff 15 c8 2e 00 00    	call   *0x2ec8(%rip)        # 3fe0 <__cxa_finalize@GLIBC_2.2.5>
    1118:	e8 63 ff ff ff       	call   1080 <_start+0x30>
    111d:	c6 05 fc 2e 00 00 01 	movb   $0x1,0x2efc(%rip)        # 4020 <__TMC_END__>
    1124:	5d                   	pop    %rbp
    1125:	c3                   	ret    
    1126:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    112d:	00 00 00 
    1130:	c3                   	ret    
    1131:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    1138:	00 00 00 00 
    113c:	0f 1f 40 00          	nopl   0x0(%rax)
    1140:	f3 0f 1e fa          	endbr64 
    1144:	e9 67 ff ff ff       	jmp    10b0 <_start+0x60>

0000000000001149 <main>:
    1149:	55                   	push   %rbp
    114a:	48 89 e5             	mov    %rsp,%rbp
    114d:	48 83 ec 60          	sub    $0x60,%rsp
    1151:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1158:	00 00 
    115a:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    115e:	31 c0                	xor    %eax,%eax
    1160:	c7 45 a0 73 00 00 00 	movl   $0x73,-0x60(%rbp)
    1167:	c7 45 a4 75 00 00 00 	movl   $0x75,-0x5c(%rbp)
    116e:	c7 45 a8 64 00 00 00 	movl   $0x64,-0x58(%rbp)
    1175:	c7 45 ac 6f 00 00 00 	movl   $0x6f,-0x54(%rbp)
    117c:	c7 45 b0 7b 00 00 00 	movl   $0x7b,-0x50(%rbp)
    1183:	c7 45 b4 77 00 00 00 	movl   $0x77,-0x4c(%rbp)
    118a:	c7 45 b8 33 00 00 00 	movl   $0x33,-0x48(%rbp)
    1191:	c7 45 bc 31 00 00 00 	movl   $0x31,-0x44(%rbp)
    1198:	c7 45 c0 6c 00 00 00 	movl   $0x6c,-0x40(%rbp)
    119f:	c7 45 c4 5f 00 00 00 	movl   $0x5f,-0x3c(%rbp)
    11a6:	c7 45 c8 72 00 00 00 	movl   $0x72,-0x38(%rbp)
    11ad:	c7 45 cc 65 00 00 00 	movl   $0x65,-0x34(%rbp)
    11b4:	c7 45 d0 76 00 00 00 	movl   $0x76,-0x30(%rbp)
    11bb:	c7 45 d4 65 00 00 00 	movl   $0x65,-0x2c(%rbp)
    11c2:	c7 45 d8 72 00 00 00 	movl   $0x72,-0x28(%rbp)
    11c9:	c7 45 dc 73 00 00 00 	movl   $0x73,-0x24(%rbp)
    11d0:	c7 45 e0 65 00 00 00 	movl   $0x65,-0x20(%rbp)
    11d7:	c7 45 e4 64 00 00 00 	movl   $0x64,-0x1c(%rbp)
    11de:	c7 45 e8 7d 00 00 00 	movl   $0x7d,-0x18(%rbp)
    11e5:	48 8d 05 18 0e 00 00 	lea    0xe18(%rip),%rax        # 2004 <_IO_stdin_used+0x4>
    11ec:	48 89 c7             	mov    %rax,%rdi
    11ef:	e8 3c fe ff ff       	call   1030 <puts@plt>
    11f4:	b8 00 00 00 00       	mov    $0x0,%eax
    11f9:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    11fd:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    1204:	00 00 
    1206:	74 05                	je     120d <main+0xc4>
    1208:	e8 33 fe ff ff       	call   1040 <__stack_chk_fail@plt>
    120d:	c9                   	leave  
    120e:	c3                   	ret    

Disassembly of section .fini:

0000000000001210 <_fini>:
    1210:	f3 0f 1e fa          	endbr64 
    1214:	48 83 ec 08          	sub    $0x8,%rsp
    1218:	48 83 c4 08          	add    $0x8,%rsp
    121c:	c3                   	ret    
