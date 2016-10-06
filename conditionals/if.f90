program demo
implicit none

  integer :: x = 1
  character :: c = 'c'
  
  if(c == 'd')then
    print *, c
  else if ( x == 1) then
    print *, x
  else
    print *, "ELSE", x
  end if

end program
