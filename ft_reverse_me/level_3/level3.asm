
level3:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 2f 00 00 	mov    0x2fd9(%rip),%rax        # 3fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <puts@plt-0x10>:
    1020:	ff 35 e2 2f 00 00    	push   0x2fe2(%rip)        # 4008 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 e4 2f 00 00    	jmp    *0x2fe4(%rip)        # 4010 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <puts@plt>:
    1030:	ff 25 e2 2f 00 00    	jmp    *0x2fe2(%rip)        # 4018 <puts@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	push   $0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001040 <strlen@plt>:
    1040:	ff 25 da 2f 00 00    	jmp    *0x2fda(%rip)        # 4020 <strlen@GLIBC_2.2.5>
    1046:	68 01 00 00 00       	push   $0x1
    104b:	e9 d0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001050 <printf@plt>:
    1050:	ff 25 d2 2f 00 00    	jmp    *0x2fd2(%rip)        # 4028 <printf@GLIBC_2.2.5>
    1056:	68 02 00 00 00       	push   $0x2
    105b:	e9 c0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001060 <memset@plt>:
    1060:	ff 25 ca 2f 00 00    	jmp    *0x2fca(%rip)        # 4030 <memset@GLIBC_2.2.5>
    1066:	68 03 00 00 00       	push   $0x3
    106b:	e9 b0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001070 <strcmp@plt>:
    1070:	ff 25 c2 2f 00 00    	jmp    *0x2fc2(%rip)        # 4038 <strcmp@GLIBC_2.2.5>
    1076:	68 04 00 00 00       	push   $0x4
    107b:	e9 a0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001080 <fflush@plt>:
    1080:	ff 25 ba 2f 00 00    	jmp    *0x2fba(%rip)        # 4040 <fflush@GLIBC_2.2.5>
    1086:	68 05 00 00 00       	push   $0x5
    108b:	e9 90 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001090 <atoi@plt>:
    1090:	ff 25 b2 2f 00 00    	jmp    *0x2fb2(%rip)        # 4048 <atoi@GLIBC_2.2.5>
    1096:	68 06 00 00 00       	push   $0x6
    109b:	e9 80 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010a0 <__isoc99_scanf@plt>:
    10a0:	ff 25 aa 2f 00 00    	jmp    *0x2faa(%rip)        # 4050 <__isoc99_scanf@GLIBC_2.7>
    10a6:	68 07 00 00 00       	push   $0x7
    10ab:	e9 70 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010b0 <exit@plt>:
    10b0:	ff 25 a2 2f 00 00    	jmp    *0x2fa2(%rip)        # 4058 <exit@GLIBC_2.2.5>
    10b6:	68 08 00 00 00       	push   $0x8
    10bb:	e9 60 ff ff ff       	jmp    1020 <_init+0x20>

Disassembly of section .plt.got:

00000000000010c0 <__cxa_finalize@plt>:
    10c0:	ff 25 32 2f 00 00    	jmp    *0x2f32(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    10c6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

00000000000010d0 <_start>:
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	31 ed                	xor    %ebp,%ebp
    10d6:	49 89 d1             	mov    %rdx,%r9
    10d9:	5e                   	pop    %rsi
    10da:	48 89 e2             	mov    %rsp,%rdx
    10dd:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    10e1:	50                   	push   %rax
    10e2:	54                   	push   %rsp
    10e3:	45 31 c0             	xor    %r8d,%r8d
    10e6:	31 c9                	xor    %ecx,%ecx
    10e8:	48 8d 3d 31 02 00 00 	lea    0x231(%rip),%rdi        # 1320 <main>
    10ef:	ff 15 db 2e 00 00    	call   *0x2edb(%rip)        # 3fd0 <__libc_start_main@GLIBC_2.34>
    10f5:	f4                   	hlt    
    10f6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    10fd:	00 00 00 

0000000000001100 <deregister_tm_clones>:
    1100:	48 8d 3d 69 2f 00 00 	lea    0x2f69(%rip),%rdi        # 4070 <__TMC_END__>
    1107:	48 8d 05 62 2f 00 00 	lea    0x2f62(%rip),%rax        # 4070 <__TMC_END__>
    110e:	48 39 f8             	cmp    %rdi,%rax
    1111:	74 15                	je     1128 <deregister_tm_clones+0x28>
    1113:	48 8b 05 be 2e 00 00 	mov    0x2ebe(%rip),%rax        # 3fd8 <_ITM_deregisterTMCloneTable@Base>
    111a:	48 85 c0             	test   %rax,%rax
    111d:	74 09                	je     1128 <deregister_tm_clones+0x28>
    111f:	ff e0                	jmp    *%rax
    1121:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1128:	c3                   	ret    
    1129:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001130 <register_tm_clones>:
    1130:	48 8d 3d 39 2f 00 00 	lea    0x2f39(%rip),%rdi        # 4070 <__TMC_END__>
    1137:	48 8d 35 32 2f 00 00 	lea    0x2f32(%rip),%rsi        # 4070 <__TMC_END__>
    113e:	48 29 fe             	sub    %rdi,%rsi
    1141:	48 89 f0             	mov    %rsi,%rax
    1144:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1148:	48 c1 f8 03          	sar    $0x3,%rax
    114c:	48 01 c6             	add    %rax,%rsi
    114f:	48 d1 fe             	sar    %rsi
    1152:	74 14                	je     1168 <register_tm_clones+0x38>
    1154:	48 8b 05 95 2e 00 00 	mov    0x2e95(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable@Base>
    115b:	48 85 c0             	test   %rax,%rax
    115e:	74 08                	je     1168 <register_tm_clones+0x38>
    1160:	ff e0                	jmp    *%rax
    1162:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1168:	c3                   	ret    
    1169:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001170 <__do_global_dtors_aux>:
    1170:	f3 0f 1e fa          	endbr64 
    1174:	80 3d f5 2e 00 00 00 	cmpb   $0x0,0x2ef5(%rip)        # 4070 <__TMC_END__>
    117b:	75 2b                	jne    11a8 <__do_global_dtors_aux+0x38>
    117d:	55                   	push   %rbp
    117e:	48 83 3d 72 2e 00 00 	cmpq   $0x0,0x2e72(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1185:	00 
    1186:	48 89 e5             	mov    %rsp,%rbp
    1189:	74 0c                	je     1197 <__do_global_dtors_aux+0x27>
    118b:	48 8b 3d d6 2e 00 00 	mov    0x2ed6(%rip),%rdi        # 4068 <__dso_handle>
    1192:	e8 29 ff ff ff       	call   10c0 <__cxa_finalize@plt>
    1197:	e8 64 ff ff ff       	call   1100 <deregister_tm_clones>
    119c:	c6 05 cd 2e 00 00 01 	movb   $0x1,0x2ecd(%rip)        # 4070 <__TMC_END__>
    11a3:	5d                   	pop    %rbp
    11a4:	c3                   	ret    
    11a5:	0f 1f 00             	nopl   (%rax)
    11a8:	c3                   	ret    
    11a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011b0 <frame_dummy>:
    11b0:	f3 0f 1e fa          	endbr64 
    11b4:	e9 77 ff ff ff       	jmp    1130 <register_tm_clones>
    11b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011c0 <wt>:
    11c0:	55                   	push   %rbp
    11c1:	48 89 e5             	mov    %rsp,%rbp
    11c4:	48 8d 3d 39 0e 00 00 	lea    0xe39(%rip),%rdi        # 2004 <_IO_stdin_used+0x4>
    11cb:	e8 60 fe ff ff       	call   1030 <puts@plt>
    11d0:	5d                   	pop    %rbp
    11d1:	c3                   	ret    
    11d2:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    11d9:	00 00 00 
    11dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000011e0 <nice>:
    11e0:	55                   	push   %rbp
    11e1:	48 89 e5             	mov    %rsp,%rbp
    11e4:	48 8d 3d 22 0e 00 00 	lea    0xe22(%rip),%rdi        # 200d <_IO_stdin_used+0xd>
    11eb:	e8 40 fe ff ff       	call   1030 <puts@plt>
    11f0:	5d                   	pop    %rbp
    11f1:	c3                   	ret    
    11f2:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    11f9:	00 00 00 
    11fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001200 <try>:
    1200:	55                   	push   %rbp
    1201:	48 89 e5             	mov    %rsp,%rbp
    1204:	48 8d 3d 07 0e 00 00 	lea    0xe07(%rip),%rdi        # 2012 <_IO_stdin_used+0x12>
    120b:	e8 20 fe ff ff       	call   1030 <puts@plt>
    1210:	5d                   	pop    %rbp
    1211:	c3                   	ret    
    1212:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1219:	00 00 00 
    121c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001220 <but>:
    1220:	55                   	push   %rbp
    1221:	48 89 e5             	mov    %rsp,%rbp
    1224:	48 8d 3d eb 0d 00 00 	lea    0xdeb(%rip),%rdi        # 2016 <_IO_stdin_used+0x16>
    122b:	e8 00 fe ff ff       	call   1030 <puts@plt>
    1230:	5d                   	pop    %rbp
    1231:	c3                   	ret    
    1232:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1239:	00 00 00 
    123c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001240 <this>:
    1240:	55                   	push   %rbp
    1241:	48 89 e5             	mov    %rsp,%rbp
    1244:	48 8d 3d cf 0d 00 00 	lea    0xdcf(%rip),%rdi        # 201a <_IO_stdin_used+0x1a>
    124b:	e8 e0 fd ff ff       	call   1030 <puts@plt>
    1250:	5d                   	pop    %rbp
    1251:	c3                   	ret    
    1252:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1259:	00 00 00 
    125c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001260 <it>:
    1260:	55                   	push   %rbp
    1261:	48 89 e5             	mov    %rsp,%rbp
    1264:	48 8d 3d b4 0d 00 00 	lea    0xdb4(%rip),%rdi        # 201f <_IO_stdin_used+0x1f>
    126b:	e8 c0 fd ff ff       	call   1030 <puts@plt>
    1270:	5d                   	pop    %rbp
    1271:	c3                   	ret    
    1272:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1279:	00 00 00 
    127c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001280 <not>:
    1280:	55                   	push   %rbp
    1281:	48 89 e5             	mov    %rsp,%rbp
    1284:	48 8d 3d 97 0d 00 00 	lea    0xd97(%rip),%rdi        # 2022 <_IO_stdin_used+0x22>
    128b:	e8 a0 fd ff ff       	call   1030 <puts@plt>
    1290:	5d                   	pop    %rbp
    1291:	c3                   	ret    
    1292:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1299:	00 00 00 
    129c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000012a0 <that>:
    12a0:	55                   	push   %rbp
    12a1:	48 89 e5             	mov    %rsp,%rbp
    12a4:	48 8d 3d 7c 0d 00 00 	lea    0xd7c(%rip),%rdi        # 2027 <_IO_stdin_used+0x27>
    12ab:	e8 80 fd ff ff       	call   1030 <puts@plt>
    12b0:	5d                   	pop    %rbp
    12b1:	c3                   	ret    
    12b2:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    12b9:	00 00 00 
    12bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000012c0 <easy>:
    12c0:	55                   	push   %rbp
    12c1:	48 89 e5             	mov    %rsp,%rbp
    12c4:	48 8d 3d 62 0d 00 00 	lea    0xd62(%rip),%rdi        # 202d <_IO_stdin_used+0x2d>
    12cb:	e8 60 fd ff ff       	call   1030 <puts@plt>
    12d0:	5d                   	pop    %rbp
    12d1:	c3                   	ret    
    12d2:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    12d9:	00 00 00 
    12dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000012e0 <___syscall_malloc>:
    12e0:	55                   	push   %rbp
    12e1:	48 89 e5             	mov    %rsp,%rbp
    12e4:	48 8d 3d 48 0d 00 00 	lea    0xd48(%rip),%rdi        # 2033 <_IO_stdin_used+0x33>
    12eb:	e8 40 fd ff ff       	call   1030 <puts@plt>
    12f0:	bf 01 00 00 00       	mov    $0x1,%edi
    12f5:	e8 b6 fd ff ff       	call   10b0 <exit@plt>
    12fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001300 <____syscall_malloc>:
    1300:	55                   	push   %rbp
    1301:	48 89 e5             	mov    %rsp,%rbp
    1304:	48 8d 3d 2e 0d 00 00 	lea    0xd2e(%rip),%rdi        # 2039 <_IO_stdin_used+0x39>
    130b:	e8 20 fd ff ff       	call   1030 <puts@plt>
    1310:	5d                   	pop    %rbp
    1311:	c3                   	ret    
    1312:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1319:	00 00 00 
    131c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001320 <main>:
    1320:	55                   	push   %rbp
    1321:	48 89 e5             	mov    %rsp,%rbp
    1324:	48 83 ec 60          	sub    $0x60,%rsp
    1328:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    132f:	48 8d 3d 0d 0d 00 00 	lea    0xd0d(%rip),%rdi        # 2043 <_IO_stdin_used+0x43>
    1336:	b0 00                	mov    $0x0,%al
    1338:	e8 13 fd ff ff       	call   1050 <printf@plt>
    133d:	48 8d 75 c0          	lea    -0x40(%rbp),%rsi
    1341:	48 8d 3d 0e 0d 00 00 	lea    0xd0e(%rip),%rdi        # 2056 <_IO_stdin_used+0x56>
    1348:	b0 00                	mov    $0x0,%al
    134a:	e8 51 fd ff ff       	call   10a0 <__isoc99_scanf@plt>
    134f:	89 45 f8             	mov    %eax,-0x8(%rbp)
    1352:	b8 01 00 00 00       	mov    $0x1,%eax
    1357:	3b 45 f8             	cmp    -0x8(%rbp),%eax
    135a:	0f 84 05 00 00 00    	je     1365 <main+0x45>
    1360:	e8 7b ff ff ff       	call   12e0 <___syscall_malloc>
    1365:	0f be 4d c1          	movsbl -0x3f(%rbp),%ecx
    1369:	b8 32 00 00 00       	mov    $0x32,%eax
    136e:	39 c8                	cmp    %ecx,%eax
    1370:	0f 84 05 00 00 00    	je     137b <main+0x5b>
    1376:	e8 65 ff ff ff       	call   12e0 <___syscall_malloc>
    137b:	0f be 4d c0          	movsbl -0x40(%rbp),%ecx
    137f:	b8 34 00 00 00       	mov    $0x34,%eax
    1384:	39 c8                	cmp    %ecx,%eax
    1386:	0f 84 05 00 00 00    	je     1391 <main+0x71>
    138c:	e8 4f ff ff ff       	call   12e0 <___syscall_malloc>
    1391:	48 8b 05 48 2c 00 00 	mov    0x2c48(%rip),%rax        # 3fe0 <stdin@GLIBC_2.2.5>
    1398:	48 8b 38             	mov    (%rax),%rdi
    139b:	e8 e0 fc ff ff       	call   1080 <fflush@plt>
    13a0:	48 8d 7d df          	lea    -0x21(%rbp),%rdi
    13a4:	31 f6                	xor    %esi,%esi
    13a6:	ba 09 00 00 00       	mov    $0x9,%edx
    13ab:	e8 b0 fc ff ff       	call   1060 <memset@plt>
    13b0:	c6 45 df 2a          	movb   $0x2a,-0x21(%rbp)
    13b4:	c6 45 bf 00          	movb   $0x0,-0x41(%rbp)
    13b8:	48 c7 45 e8 02 00 00 	movq   $0x2,-0x18(%rbp)
    13bf:	00 
    13c0:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%rbp)
    13c7:	48 8d 7d df          	lea    -0x21(%rbp),%rdi
    13cb:	e8 70 fc ff ff       	call   1040 <strlen@plt>
    13d0:	48 89 c1             	mov    %rax,%rcx
    13d3:	31 c0                	xor    %eax,%eax
    13d5:	48 83 f9 08          	cmp    $0x8,%rcx
    13d9:	88 45 bb             	mov    %al,-0x45(%rbp)
    13dc:	0f 83 21 00 00 00    	jae    1403 <main+0xe3>
    13e2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    13e6:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
    13ea:	48 8d 7d c0          	lea    -0x40(%rbp),%rdi
    13ee:	e8 4d fc ff ff       	call   1040 <strlen@plt>
    13f3:	48 89 c1             	mov    %rax,%rcx
    13f6:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    13fa:	48 39 c8             	cmp    %rcx,%rax
    13fd:	0f 92 c0             	setb   %al
    1400:	88 45 bb             	mov    %al,-0x45(%rbp)
    1403:	8a 45 bb             	mov    -0x45(%rbp),%al
    1406:	a8 01                	test   $0x1,%al
    1408:	0f 85 05 00 00 00    	jne    1413 <main+0xf3>
    140e:	e9 4e 00 00 00       	jmp    1461 <main+0x141>
    1413:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1417:	8a 44 05 c0          	mov    -0x40(%rbp,%rax,1),%al
    141b:	88 45 bc             	mov    %al,-0x44(%rbp)
    141e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1422:	8a 44 05 c1          	mov    -0x3f(%rbp,%rax,1),%al
    1426:	88 45 bd             	mov    %al,-0x43(%rbp)
    1429:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    142d:	8a 44 05 c2          	mov    -0x3e(%rbp,%rax,1),%al
    1431:	88 45 be             	mov    %al,-0x42(%rbp)
    1434:	48 8d 7d bc          	lea    -0x44(%rbp),%rdi
    1438:	e8 53 fc ff ff       	call   1090 <atoi@plt>
    143d:	88 c1                	mov    %al,%cl
    143f:	48 63 45 f4          	movslq -0xc(%rbp),%rax
    1443:	88 4c 05 df          	mov    %cl,-0x21(%rbp,%rax,1)
    1447:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    144b:	48 83 c0 03          	add    $0x3,%rax
    144f:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    1453:	8b 45 f4             	mov    -0xc(%rbp),%eax
    1456:	83 c0 01             	add    $0x1,%eax
    1459:	89 45 f4             	mov    %eax,-0xc(%rbp)
    145c:	e9 66 ff ff ff       	jmp    13c7 <main+0xa7>
    1461:	48 63 45 f4          	movslq -0xc(%rbp),%rax
    1465:	c6 44 05 df 00       	movb   $0x0,-0x21(%rbp,%rax,1)
    146a:	48 8d 35 93 0b 00 00 	lea    0xb93(%rip),%rsi        # 2004 <_IO_stdin_used+0x4>
    1471:	48 8d 7d df          	lea    -0x21(%rbp),%rdi
    1475:	e8 f6 fb ff ff       	call   1070 <strcmp@plt>
    147a:	89 45 f0             	mov    %eax,-0x10(%rbp)
    147d:	8b 45 f0             	mov    -0x10(%rbp),%eax
    1480:	89 45 ac             	mov    %eax,-0x54(%rbp)
    1483:	83 e8 fe             	sub    $0xfffffffe,%eax
    1486:	0f 84 aa 00 00 00    	je     1536 <main+0x216>
    148c:	e9 00 00 00 00       	jmp    1491 <main+0x171>
    1491:	8b 45 ac             	mov    -0x54(%rbp),%eax
    1494:	83 e8 ff             	sub    $0xffffffff,%eax
    1497:	0f 84 8f 00 00 00    	je     152c <main+0x20c>
    149d:	e9 00 00 00 00       	jmp    14a2 <main+0x182>
    14a2:	8b 45 ac             	mov    -0x54(%rbp),%eax
    14a5:	85 c0                	test   %eax,%eax
    14a7:	0f 84 b1 00 00 00    	je     155e <main+0x23e>
    14ad:	e9 00 00 00 00       	jmp    14b2 <main+0x192>
    14b2:	8b 45 ac             	mov    -0x54(%rbp),%eax
    14b5:	83 e8 01             	sub    $0x1,%eax
    14b8:	0f 84 5a 00 00 00    	je     1518 <main+0x1f8>
    14be:	e9 00 00 00 00       	jmp    14c3 <main+0x1a3>
    14c3:	8b 45 ac             	mov    -0x54(%rbp),%eax
    14c6:	83 e8 02             	sub    $0x2,%eax
    14c9:	0f 84 53 00 00 00    	je     1522 <main+0x202>
    14cf:	e9 00 00 00 00       	jmp    14d4 <main+0x1b4>
    14d4:	8b 45 ac             	mov    -0x54(%rbp),%eax
    14d7:	83 e8 03             	sub    $0x3,%eax
    14da:	0f 84 60 00 00 00    	je     1540 <main+0x220>
    14e0:	e9 00 00 00 00       	jmp    14e5 <main+0x1c5>
    14e5:	8b 45 ac             	mov    -0x54(%rbp),%eax
    14e8:	83 e8 04             	sub    $0x4,%eax
    14eb:	0f 84 59 00 00 00    	je     154a <main+0x22a>
    14f1:	e9 00 00 00 00       	jmp    14f6 <main+0x1d6>
    14f6:	8b 45 ac             	mov    -0x54(%rbp),%eax
    14f9:	83 e8 05             	sub    $0x5,%eax
    14fc:	0f 84 52 00 00 00    	je     1554 <main+0x234>
    1502:	e9 00 00 00 00       	jmp    1507 <main+0x1e7>
    1507:	8b 45 ac             	mov    -0x54(%rbp),%eax
    150a:	83 e8 73             	sub    $0x73,%eax
    150d:	0f 84 55 00 00 00    	je     1568 <main+0x248>
    1513:	e9 5a 00 00 00       	jmp    1572 <main+0x252>
    1518:	e8 c3 fd ff ff       	call   12e0 <___syscall_malloc>
    151d:	e9 55 00 00 00       	jmp    1577 <main+0x257>
    1522:	e8 b9 fd ff ff       	call   12e0 <___syscall_malloc>
    1527:	e9 4b 00 00 00       	jmp    1577 <main+0x257>
    152c:	e8 af fd ff ff       	call   12e0 <___syscall_malloc>
    1531:	e9 41 00 00 00       	jmp    1577 <main+0x257>
    1536:	e8 a5 fd ff ff       	call   12e0 <___syscall_malloc>
    153b:	e9 37 00 00 00       	jmp    1577 <main+0x257>
    1540:	e8 9b fd ff ff       	call   12e0 <___syscall_malloc>
    1545:	e9 2d 00 00 00       	jmp    1577 <main+0x257>
    154a:	e8 91 fd ff ff       	call   12e0 <___syscall_malloc>
    154f:	e9 23 00 00 00       	jmp    1577 <main+0x257>
    1554:	e8 87 fd ff ff       	call   12e0 <___syscall_malloc>
    1559:	e9 19 00 00 00       	jmp    1577 <main+0x257>
    155e:	e8 9d fd ff ff       	call   1300 <____syscall_malloc>
    1563:	e9 0f 00 00 00       	jmp    1577 <main+0x257>
    1568:	e8 73 fd ff ff       	call   12e0 <___syscall_malloc>
    156d:	e9 05 00 00 00       	jmp    1577 <main+0x257>
    1572:	e8 69 fd ff ff       	call   12e0 <___syscall_malloc>
    1577:	31 c0                	xor    %eax,%eax
    1579:	48 83 c4 60          	add    $0x60,%rsp
    157d:	5d                   	pop    %rbp
    157e:	c3                   	ret    

Disassembly of section .fini:

0000000000001580 <_fini>:
    1580:	f3 0f 1e fa          	endbr64 
    1584:	48 83 ec 08          	sub    $0x8,%rsp
    1588:	48 83 c4 08          	add    $0x8,%rsp
    158c:	c3                   	ret    
