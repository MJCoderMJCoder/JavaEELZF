package com.lzf;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebService;

@WebService(serviceName = "summation")
public class Summation {
    @WebMethod(operationName = "twosummation")
    public double twosummation(@WebParam(name = "d1") final double d1, @WebParam(name = "d2") final double d2) {
        return d1+d2;
    }
}
