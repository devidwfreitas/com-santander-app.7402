package org.simpleframework.xml.transform;

class PrimitiveMatcher implements Matcher {
  public Transform match(Class<int> paramClass) {
    return (Transform)((paramClass == int.class) ? new IntegerTransform() : ((paramClass == boolean.class) ? new BooleanTransform() : ((paramClass == long.class) ? new LongTransform() : ((paramClass == double.class) ? new DoubleTransform() : ((paramClass == float.class) ? new FloatTransform() : ((paramClass == short.class) ? new ShortTransform() : ((paramClass == byte.class) ? new ByteTransform() : ((paramClass == char.class) ? new CharacterTransform() : null))))))));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\transform\PrimitiveMatcher.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */