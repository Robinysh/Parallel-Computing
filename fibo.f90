subroutine fib(end)
implicit none
  integer :: end, i
  integer(kind=16) :: x = 1, y = 1, t
  print *, "Start"
  do i = 0, end
    print *,y
    t = x
    x = y
    y = x + t
  end do
end subroutine fib

program main
implicit none
  integer :: input
  print *, "Enter amount of items"
  input = 5
  !read *, input
  call fib(input)
end program main
