program demo
implicit none

  integer i

  ! here is how you can make a for loop with goto

  i = 1
  20 continue
    print *, i
  i = i + 1
  if ( i < 10 ) goto 20

end program
