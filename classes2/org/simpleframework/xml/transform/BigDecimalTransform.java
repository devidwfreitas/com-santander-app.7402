package org.simpleframework.xml.transform;

import java.math.BigDecimal;

class BigDecimalTransform implements Transform<BigDecimal> {
  public BigDecimal read(String paramString) {
    return new BigDecimal(paramString);
  }
  
  public String write(BigDecimal paramBigDecimal) {
    return paramBigDecimal.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\transform\BigDecimalTransform.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */