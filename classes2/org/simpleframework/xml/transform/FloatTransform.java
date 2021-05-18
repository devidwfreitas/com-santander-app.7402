package org.simpleframework.xml.transform;

class FloatTransform implements Transform<Float> {
  public Float read(String paramString) {
    return Float.valueOf(paramString);
  }
  
  public String write(Float paramFloat) {
    return paramFloat.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\transform\FloatTransform.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */