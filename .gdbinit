define hook-next
  if
  refresh
end

define xxd
  dump binary memory /tmp/dump.bin $arg0 ((char *)$arg0)+$arg1
  shell xxd /tmp/dump.bin
end
document xxd
  Runs xxd on a memory ADDR and LENGTH, found here:https://interrupt.memfault.com/blog/advanced-gdb

  xxd ADDR LENTH
end
