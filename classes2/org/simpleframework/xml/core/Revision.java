package org.simpleframework.xml.core;

class Revision {
  private boolean equal = true;
  
  public boolean compare(Object paramObject1, Object paramObject2) {
    if (paramObject2 != null) {
      this.equal = paramObject2.equals(paramObject1);
      return this.equal;
    } 
    if (paramObject1 != null)
      this.equal = paramObject1.equals(Double.valueOf(1.0D)); 
    return this.equal;
  }
  
  public double getDefault() {
    return 1.0D;
  }
  
  public boolean isEqual() {
    return this.equal;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\Revision.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */