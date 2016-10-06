program demo
implicit none

  type position
    real x, y, z
  end type

  type(position) :: pos
  type(position) :: posarr(10)

  pos%x=5.5
  posarr(1:5)%y=2.345

  print *, pos
  print *, posarr

end program
