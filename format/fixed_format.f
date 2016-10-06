      program main
c implicit none is omitted on purpose
c This is comment
      real x
      integer i
      x = 0
      x = x + 
     &1
c Here is a typo of do 5 i = 1, 3
      do 5 i = 1. 3
5     continue
      print *, do5i
      print *, x
      end program main
