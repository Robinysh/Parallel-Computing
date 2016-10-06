program demo
implicit none

  real, dimension(4,8) :: a
  real, dimension ( -16:15 ) :: b
  integer i, j

  print *, size(a), size(a(1,:))

  a (2:3,3:6)=1.0

  do i = 1, 4
    do j = 1, 8
      print *,i,j, a(i,j)
    end do
  end do

end program
