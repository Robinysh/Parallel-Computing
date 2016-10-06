program demo
implicit none

real f

f = 3.1415926536

! print with default formatting
print *, f
write (6, *) f

! print real number with 5 characters (including dot), 2 decimal places
print "(F5.2)", f

! print scientific real number with 9.2
print "(E9.2)", f

! print to file called "test"
open (9, file='test')
write (9, *) f
close (9)

end program
