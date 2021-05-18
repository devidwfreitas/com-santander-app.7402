package org.simpleframework.xml.transform;

class ArrayMatcher implements Matcher {
  private final Matcher primary;
  
  public ArrayMatcher(Matcher paramMatcher) {
    this.primary = paramMatcher;
  }
  
  private Transform matchArray(Class paramClass) {
    Transform transform = this.primary.match(paramClass);
    return (transform == null) ? null : new ArrayTransform(transform, paramClass);
  }
  
  public Transform match(Class<?> paramClass) {
    paramClass = paramClass.getComponentType();
    return (paramClass == char.class) ? new CharacterArrayTransform(paramClass) : ((paramClass == Character.class) ? new CharacterArrayTransform(paramClass) : ((paramClass == String.class) ? new StringArrayTransform() : matchArray(paramClass)));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\transform\ArrayMatcher.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */