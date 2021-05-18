package org.simpleframework.xml.transform;

import java.util.concurrent.atomic.AtomicLong;

class AtomicLongTransform implements Transform<AtomicLong> {
  public AtomicLong read(String paramString) {
    return new AtomicLong(Long.valueOf(paramString).longValue());
  }
  
  public String write(AtomicLong paramAtomicLong) {
    return paramAtomicLong.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\transform\AtomicLongTransform.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */