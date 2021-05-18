package org.simpleframework.xml.transform;

class IntegerTransform implements Transform<Integer> {
  public Integer read(String paramString) {
    return Integer.valueOf(paramString);
  }
  
  public String write(Integer paramInteger) {
    return paramInteger.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\transform\IntegerTransform.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */