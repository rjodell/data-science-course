





subroutine calc_basel( threshold )
 ! implicit none 
  use param, only: pi
  implicit none
  character(len=*), parameter :: fmt = "(*(1x,g0))"
  real(kind=8), intent(in) :: threshold 
  real(kind=8) :: numerical_solution, error, real_solution, n
  integer :: iter
  
  real_solution=(pi**2.0)/6.0

  iter=1 
  n=1.0
  numerical_solution=0
  error= 10
 do while ( error > threshold )
     numerical_solution=numerical_solution+(1d0/(n**2d0))
     error=ABS(real_solution-numerical_solution)
     
     n=n+1
     iter=iter+1
     if( MODULO(iter,1000)==0)then
        open(unit=5 , file="results.txt" )
        write(5,fmt) "n = " ,iter, "      error= ", error  
       
     endif
    ! temp=numerical_solution
    ! n=n+1
    ! iter=iter+1

  enddo
  
   write(5,fmt) "total number of cycles = ", iter-1
   write(5,fmt) "numerical solution = ", numerical_solution
   write(5,fmt) "error=", error
   
!  print *, "total number of cycles = " , iter
!  print *,  "error = " , erro
!  print *, "numerical solution = " , numerical_solution
end subroutine calc_basel
