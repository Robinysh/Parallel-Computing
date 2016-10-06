program demo
implicit none

  integer i

  ! newer style
  do i = 1, 10, 2
    print *, "LOOP1", i  
  end do

  ! older style
  do 20 i = 1, 10
    print *, "LOOP2", i
  20 continue

end program
