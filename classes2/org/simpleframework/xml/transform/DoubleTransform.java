package org.simpleframework.xml.transform;

class DoubleTransform implements Transform<Double> {
  public Double read(String paramString) {
    return Double.valueOf(paramString);
  }
  
  public String write(Double paramDouble) {
    return paramDouble.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\transform\DoubleTransform.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */