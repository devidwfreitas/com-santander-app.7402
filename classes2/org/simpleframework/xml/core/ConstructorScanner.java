package org.simpleframework.xml.core;

import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.List;

class ConstructorScanner {
  private Signature primary;
  
  private ParameterMap registry = new ParameterMap();
  
  private List<Signature> signatures = new ArrayList<Signature>();
  
  private Support support;
  
  public ConstructorScanner(Detail paramDetail, Support paramSupport) {
    this.support = paramSupport;
    scan(paramDetail);
  }
  
  private void scan(Constructor paramConstructor) {
    SignatureScanner signatureScanner = new SignatureScanner(paramConstructor, this.registry, this.support);
    if (signatureScanner.isValid())
      for (Signature signature : signatureScanner.getSignatures()) {
        if (signature.size() == 0)
          this.primary = signature; 
        this.signatures.add(signature);
      }  
  }
  
  private void scan(Detail paramDetail) {
    int i = 0;
    Constructor[] arrayOfConstructor = paramDetail.getConstructors();
    if (!paramDetail.isInstantiable())
      throw new ConstructorException("Can not construct inner %s", new Object[] { paramDetail }); 
    int j = arrayOfConstructor.length;
    while (i < j) {
      Constructor constructor = arrayOfConstructor[i];
      if (!paramDetail.isPrimitive())
        scan(constructor); 
      i++;
    } 
  }
  
  public ParameterMap getParameters() {
    return this.registry;
  }
  
  public Signature getSignature() {
    return this.primary;
  }
  
  public List<Signature> getSignatures() {
    return new ArrayList<Signature>(this.signatures);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\ConstructorScanner.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */