program demo
implicit none

  integer :: x = 2

  select case (x)
    case (1)
      print *, '1'
    case (2,5)
      print *, "2 or 5"
    case (3:4)
      print *, '3 or 4'
    case (:0,7:)
      print *, '<= 0 or >= 7'
    case default
      print *, 'DEFAULT'
  end select

end program
