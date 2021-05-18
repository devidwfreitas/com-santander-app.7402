package org.jaxen.expr;

class IdentitySet$IdentityWrapper {
  private Object object;
  
  IdentitySet$IdentityWrapper(Object paramObject) {
    this.object = paramObject;
  }
  
  public boolean equals(Object paramObject) {
    paramObject = paramObject;
    return (this.object == ((IdentitySet$IdentityWrapper)paramObject).object);
  }
  
  public int hashCode() {
    return System.identityHashCode(this.object);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\expr\IdentitySet$IdentityWrapper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */