package org.jaxen.expr;

import java.util.HashSet;

final class IdentitySet {
  private HashSet contents = new HashSet();
  
  void add(Object paramObject) {
    paramObject = new IdentitySet$IdentityWrapper(paramObject);
    this.contents.add(paramObject);
  }
  
  public boolean contains(Object paramObject) {
    paramObject = new IdentitySet$IdentityWrapper(paramObject);
    return this.contents.contains(paramObject);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\expr\IdentitySet.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */