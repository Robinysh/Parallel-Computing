program demo
implicit none
  real, allocatable, target :: a(:), b(:)
  real, pointer             :: c(:), d(:), e(:)
  integer, target           :: ia, ib
  integer, pointer          :: ic, id, ie

  
  allocate( a(10), b(10) )

  c => a
  d => b
  print *, associated(c, a), associated(d, b)

  e=>c
  c=>d
  d=>e
  print *, associated(c, b), associated(d, a)
  print *, associated(c, a), associated(d, b)

  deallocate (a, b)

  ic => ia
  id => ib

  ie => ic
  ic => id
  id => ie

  print *, associated (ic, ib), associated(id, ia)

  nullify(ic)

  print *, associated (ic, ib), associated(id, ia)

end program
