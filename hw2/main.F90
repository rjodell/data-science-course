program main
implicit none


!need to call all the inputs of our subroutine cal_basel
! the inputs are numerical solution and threshold 
real(kind=8) :: threshold 


print *, "Please Enter An Appropriate Threshold value: "
read *, threshold


 
call calc_basel(threshold)


end program main

