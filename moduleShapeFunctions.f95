module ShapeFunctions
use module SetPrecision
contains
function elementQuadFunction(ksi,eta,nfunc) result(N)
real(prec), intent(in)::ksi,eta
integer,intent(in)::nfunc
real(prec),parameter::fourth=1.0_prec/4.0_prec
select case(nfunc)

case(1)
	ksiI=-1.0
	etaI=-1.0
case(2)
	ksiI=1.0
	etaI=-1.0
case(3)
	ksiI=1.0
	etaI=1.0
case(4)
	ksiI=-1.0
	etaI=1.0

N=0.25*(1+ksi*ksiI)*(1+eta*etaI)

end function

end module ShapeFunctions
