program demo
use my_module
implicit none

  print *, foo()
  print *, pi

  ! These two are private, doesn't work

  ! print *, bar
  ! print *, e

end program
