package org.simpleframework.xml.core;

import org.simpleframework.xml.util.Cache;
import org.simpleframework.xml.util.ConcurrentCache;

class ScannerFactory {
  private final Cache<Scanner> cache = (Cache<Scanner>)new ConcurrentCache();
  
  private final Support support;
  
  public ScannerFactory(Support paramSupport) {
    this.support = paramSupport;
  }
  
  public Scanner getInstance(Class paramClass) {
    Scanner scanner2 = (Scanner)this.cache.fetch(paramClass);
    Scanner scanner1 = scanner2;
    if (scanner2 == null) {
      Detail detail = this.support.getDetail(paramClass);
      if (this.support.isPrimitive(paramClass)) {
        scanner1 = new PrimitiveScanner(detail);
      } else {
        scanner2 = new ObjectScanner(detail, this.support);
        scanner1 = scanner2;
        if (scanner2.isPrimitive()) {
          scanner1 = scanner2;
          if (!this.support.isContainer(paramClass))
            scanner1 = new DefaultScanner(detail, this.support); 
        } 
      } 
      this.cache.cache(paramClass, scanner1);
    } 
    return scanner1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\ScannerFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */