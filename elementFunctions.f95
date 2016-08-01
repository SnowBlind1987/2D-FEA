function elementQuadFunction(ksi,eta,nfunc) result(N)
real, intent(in)::ksi,eta
integer,intent(in)::nfunc

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

N=0.5*(1+ksi*ksiI)*(1+eta*etaI)
