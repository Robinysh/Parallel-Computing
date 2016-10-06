program demo
implicit none

  integer i, j, k

  do 2 i = 1, 10
    do 3 j = 1, 10
      print *, i, j
      do 4 k = 1, 10
        ! cycle
        print *, i, j, k
        ! exit
        ! goto 1
        ! stop
4     continue
3   continue
2 continue
1 continue
end program
