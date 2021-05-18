package org.simpleframework.xml.transform;

import java.util.concurrent.atomic.AtomicInteger;

class AtomicIntegerTransform implements Transform<AtomicInteger> {
  public AtomicInteger read(String paramString) {
    return new AtomicInteger(Integer.valueOf(paramString).intValue());
  }
  
  public String write(AtomicInteger paramAtomicInteger) {
    return paramAtomicInteger.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\transform\AtomicIntegerTransform.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */