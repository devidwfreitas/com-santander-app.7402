package org.simpleframework.xml.convert;

import org.simpleframework.xml.util.ConcurrentCache;

class ScannerBuilder extends ConcurrentCache<Scanner> {
  public Scanner build(Class<?> paramClass) {
    Scanner scanner2 = (Scanner)get(paramClass);
    Scanner scanner1 = scanner2;
    if (scanner2 == null) {
      scanner1 = new ScannerBuilder$Entry(paramClass);
      put(paramClass, scanner1);
    } 
    return scanner1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\convert\ScannerBuilder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */