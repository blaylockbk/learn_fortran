! Brian Blaylock
! Feberuary 9, 2022

program sandbox
   !! A "Hello World" Fortran program

   implicit none

   character(len=10) :: name

   name = "Brian"
   ! This is a comment line, it is ignored by the compiler
   print *, "Hello World! 🌎 My name is "//name
   print *, "It is a great day to learn Fortran"

end program sandbox
