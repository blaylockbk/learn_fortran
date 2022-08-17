! Brian Blaylock
! June 9, 2022

! Sandbox program for testing

program sandbox
   implicit none

   character(len=20)  :: name
   integer            :: a = 5
   integer            :: b = 10

   name = "Brian Blaylock"

   write (*, *) 'hello  '//name//"!"
   write (*, *) 'hi '//trim(name)//"!"

   print *, a, b, a + b

end program sandbox
