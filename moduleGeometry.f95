module Geometry
use modulePrecision
contains
type Node
	integer:: nid
	real(prec):: x,y,z
end type Node

type QuadElement
	integer::eid
	type(node)::n1
	type(node)::n2
	type(node)::n3
	type(node)::n4
end type Element

subroutine calcJacobian(X1,X2,X3,X4,&
						Y1,Y2,Y3,Y3,jac)
real(prec),intent(in)::X1,X2,X3,X4
real(prec),intent(in)::Y1,Y2,Y3,Y4
real(prec),intent(out)::jac
real(prec),parameter::eighth=1.0_prec/8.0_prec
jac=eighth*(X1*Y2-X1*Y4-X2*Y1+X2*Y4-X3*Y2+X3*Y4+X4*Y1-X4*Y3)

end subroutine calcJacobian

end module
