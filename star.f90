subroutine star(end)
implicit none
  integer :: end, i, j
  character, dimension (end,end) :: container
  do i = 1, end
    do j = 1, end
      if (i==j .or. i==end-j+1) then
        container(i,j)="X"
      else
        container(i,j)=" "
      end if
    end do
  end do
  do i = 1, end
    print *,container(i,:)
  end do
end subroutine star

program main
implicit none
  integer :: input
  print *, "Enter amount of rows"
  !read *, input
  input = 10
  call star(input)
end program main
