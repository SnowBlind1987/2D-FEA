function jac=jacobian(X1,X2,X3,X4,Y1,Y2,Y3,Y4)
	dxdksi=1/4*(-X1+X2+X3-X4)
	dxdeta=1/4*(-X1-X2+X3+X4)
	dydksi=1/4*(-Y1+Y2+Y3-Y4)
	dydeta=1/4*(-Y1-Y2+Y3+Y4)
	
	F=[dxdksi, dxdeta; dydksi, dydeta]
    	
	jac=1/8*(X1*Y2-X1*Y4-X2*Y1+X2*Y3-X3*Y2+X3*Y4+X4*Y1-X4*Y3)
