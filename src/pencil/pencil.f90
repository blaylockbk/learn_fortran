program write_with_pencil
   implicit none

   type :: pencil
      character(len=30) :: brand = "Dixon Ticonderoga"   ! Pencil brand name
      real              :: sharpness = 0                 ! Lead sharpness between 0 (dull) to 1 (sharp)
      real              :: length = 10                   ! Length of pencil in inches
   end type pencil

   type(pencil)  :: pencil1

   print *, "The Pencil's brand is: ", pencil1%brand
   print *, "The Pencil's length is: ", pencil1%length
   print *, "The Pencil's sharpness is: ", pencil1%sharpness

end program write_with_pencil
