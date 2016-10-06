module my_module
  real, parameter, public ::  pi = 3.1415
  real, parameter, private :: e = 2.7172

  public :: foo
  private:: bar
contains
  function foo()
    real foo
    foo = bar()
  end function
  
  function bar ()
    real bar
    bar = e
  end function
end module
