package org.simpleframework.xml.transform;

import java.math.BigInteger;

class BigIntegerTransform implements Transform<BigInteger> {
  public BigInteger read(String paramString) {
    return new BigInteger(paramString);
  }
  
  public String write(BigInteger paramBigInteger) {
    return paramBigInteger.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\transform\BigIntegerTransform.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */