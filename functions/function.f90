program demo
implicit none

  real :: bar

  print *,  bar(1.0, 0.0)

  ! supplying wrong number of arg compiles when you do not have an interface
  print *, bar(1.0, 2.0, 3.0)
  ! supplying wrong type also compiles
  print *, bar(1)

end program


function bar(r, k)
implicit none

  real, intent(in)  :: r
  real, intent(out) :: k
  real              :: bar
  integer, save     :: count = 0

  count = count + 1
  print *,"COUNT:", count

  ! Declared r as in, with this line is compiling error
  ! r = 1.0

  ! Declared k as out, omitting this line is compiling error
  k = 2.0

  ! return value
  bar = r

end function
