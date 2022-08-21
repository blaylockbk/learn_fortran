program read_namelist
   implicit none
   !! Read data from a namelist file.

   character(len=100) :: filename
   integer :: io = 88
   integer :: stat
   character(len=512) :: msg

   !============================================================================
   ! Variables from the namelist
   !============================================================================
   integer :: harvested
   integer :: sold
   real :: unit_price
   character(len=25) :: variety
   character(len=15) :: color
   logical :: is_sweet

   namelist /apple/ harvested, sold, unit_price, variety, color, is_sweet
   namelist /peach/ harvested, sold, unit_price, variety, color, is_sweet
   namelist /cherry/ harvested, sold, unit_price, variety, color, is_sweet
   !============================================================================

   ! Specify the path to the namelist file you will read
   filename = "./fruit.namelist"

   ! Open the namelist file
   open (newunit=io, file=trim(filename), status="old", action="read", &
         iostat=stat, iomsg=msg)

   ! Check that the requested file exists and was opened
   if (stat /= 0) then
      print *, "INFO: ", trim(msg), " >>> EXIT PROGRAM"
      call exit(1)
   end if

   !==================================
   ! Read and print the APPLE namelist
   read (unit=io, nml=apple, iostat=stat, iomsg=msg)
   if (stat /= 0) then
      print *, "INFO: ", trim(msg), " >>>EXIT PROGRAM"
      call exit(1)
   end if

   call show_earnings("APPLE")

   !==================================
   ! Read and print the PEACH namelist
   read (unit=io, nml=peach, iostat=stat, iomsg=msg)
   if (stat /= 0) then
      print *, "INFO: ", trim(msg), " >>>EXIT PROGRAM"
      call exit(1)
   end if

   call show_earnings("PEACH")

   !===================================
   ! Read and print the CHERRY namelist
   read (unit=io, nml=cherry, iostat=stat, iomsg=msg)
   if (stat /= 0) then
      print *, "INFO: ", trim(msg), " >>>EXIT PROGRAM"
      call exit(1)
   end if

   call show_earnings("CHERRY")

   ! Close the namelist file
   close (io)

contains

   subroutine show_earnings(fruit)
      !! Print the values from the namelist file and compute the earnings
      !! for the fruit sold.

      character(len=*) :: fruit

      write (*, *)
      write (*, *) "==============================="
      write (*, *) "         ", trim(fruit), " HARVEST"
      write (*, *) "-------------------------------"
      write (*, *) "Variety: ", variety
      write (*, *) "Color: ", color
      write (*, *) "Sweet: ", is_sweet
      write (*, *) "==============================="
      write (*, '(a13,i6)') "Harvested:", harvested
      write (*, '(a13,i6)') "Sold:", sold
      write (*, '(a13,f6.2)') "Unit price:", unit_price
      write (*, *) "-------------------------------"
      write (*, '(a13,a1,f10.2)') "Total Sales:", "$", sold*unit_price
      write (*, *)

   end subroutine show_earnings

end program read_namelist
