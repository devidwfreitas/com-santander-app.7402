package org.simpleframework.xml.transform;

class DefaultMatcher implements Matcher {
  private Matcher array = new ArrayMatcher(this);
  
  private Matcher matcher;
  
  private Matcher primitive = new PrimitiveMatcher();
  
  private Matcher stock = new PackageMatcher();
  
  public DefaultMatcher(Matcher paramMatcher) {
    this.matcher = paramMatcher;
  }
  
  private Transform matchType(Class paramClass) {
    return paramClass.isArray() ? this.array.match(paramClass) : (paramClass.isPrimitive() ? this.primitive.match(paramClass) : this.stock.match(paramClass));
  }
  
  public Transform match(Class paramClass) {
    Transform transform = this.matcher.match(paramClass);
    return (transform != null) ? transform : matchType(paramClass);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\transform\DefaultMatcher.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */