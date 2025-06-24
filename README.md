***mk*** [*m*icro*k*ernel]
---
personal educational/research project to study OS kernel development, porting methods and computer architecture.

***roadmap*** to 0.1
---
The goal of release 0.1 is to have a working kernel that manages interrupts, threads, processes, memory and devices at a basic level. 

> there is a list of abstract top-level tasks, during work the abstract task is broken down into small specific tasks and progress is noted in this roadmap.

- [ ] repository setup
  - [x] basic git setup
  - [ ] build environment
  - [ ] \(Optional) ci/cd
- [ ] machine-dependent backend bootstrap
- [ ] clock
- [ ] timer
- [ ] thread and scheduling
- [ ] interrupts
- [ ] phys memory
- [ ] virt memory
- [ ] processes and context switching
- [ ] syscalls
- [ ] user elf loading