program demo
implicit none

  integer i

  i = 0
  ! newer style
  do while ( i < 10)
    i = i + 1
    print *, "LOOP1", i
  end do

  i = 0
  ! older style
  do 20 while ( i < 10)
    i = i + 1
    print *, "LOOP1", i
  20 continue

end program
