# Computer Organization/Architecture and Assembly Language

- [Dr. Nauman course](https://youtube.com/playlist?list=PLnd7R4Mcw3rJCvAduQxyySvejtBIaPs0O&si=3E1_yLfg6P4hVI-2)
- [VU course by Mr. Belal Muhammad Hashmi](https://www.youtube.com/playlist?list=PLKyB9RYzaFRh9pYhDsTGXnDqRx0YZQFbn)

## Resources

- [Code Repo by Dr. Nauman](https://github.com/recluze/assembly-lang-course)
  - [Syscall table](https://blog.rchapman.org/posts/Linux_System_Call_Table_for_x86_64/)
  - [Intel® 64 and IA-32 Architectures Software Developer’s Manual](https://cdrdv2.intel.com/v1/dl/getContent/671200)

```bash
nasm file.asm -l file.lst -o file.com
```

ctrl + F4 to refresh dosbox

### Units

![img](https://library.automationdirect.com/eemsushe/2013/09/Table-1-word.jpg)

| Zeros            | Bits               | Label  |
| ---------------- | ------------------ | ------ |
| 0                | 1 bit              | bit    |
| 0000             | 4 bits             | nibble |
| 00000000         | 8 bits             | byte   |
| 0000000000000000 | 16 bits or 2 bytes | word   |

word is standard memory bus width in your architecture
