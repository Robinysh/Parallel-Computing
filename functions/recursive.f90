program demo
implicit none

  integer :: factorial

  print *, factorial(5)

end program

! recursive keyword omitted is compiling error
recursive function factorial(x)
implicit none

  integer, intent(in)  :: x
  integer              :: factorial

  if ( x > 1 ) then
    factorial = x * factorial(x - 1)
  else
    factorial = 1
  end if

end function
