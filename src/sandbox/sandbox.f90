program sandbox
   implicit none

   integer :: a = 5
   integer :: b = 10

   character(len=20) :: name

   name = "Brian Blaylock"

   print *, a, b, a + b
   write (*, *), "Hello there, ", trim(name)

end program sandbox
