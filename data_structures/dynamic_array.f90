module dynamic_array_module
  real, dimension(:,:), allocatable :: a
  real, dimension (:), allocatable :: b
contains
  subroutine init()
    allocate ( a(4,8), b(-16: 15))
  end subroutine
  subroutine finalize()
    deallocate (a, b)
  end subroutine
end module

program demo
use dynamic_array_module
implicit none
  
  call init()
  call print_array()
  call finalize()

end program

subroutine print_array
use dynamic_array_module
implicit none
  integer i, j

  print *, size(a), size(a(1,:))

  a(2:3,3:6)=1.0

  do i = 1, 4
    do j = 1, 8
      print *,i,j, a(i,j)
    end do
  end do

end subroutine
