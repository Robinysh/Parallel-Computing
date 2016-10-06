program demo
implicit none

real(kind=8) :: g = huge(g)
integer(kind=2) :: j = huge(j)
complex :: i = (0, 1)
character, parameter :: c = 'c'
character(len=20), parameter :: hello = "hello world"
logical :: t = .true., f = .false.

! assigning a parameter doesn't work
! c = 'd'

print *, g
print *, j
print *, i
print *, c, hello
print *, t, f


end program
