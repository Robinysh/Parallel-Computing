program demo
implicit none

  real :: x, y
  integer :: z
  call foo(x)
  print *, x

  ! supplying wrong number of arg compiles when you do not have an interface
  call foo(x, y)
  print *, x, y
  ! wrong type too
  call foo(z)
  print *, z

end program


subroutine foo(x)
implicit none

  real :: x

  x = 1.0

end subroutine
