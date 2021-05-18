package org.simpleframework.xml.transform;

class LongTransform implements Transform<Long> {
  public Long read(String paramString) {
    return Long.valueOf(paramString);
  }
  
  public String write(Long paramLong) {
    return paramLong.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\transform\LongTransform.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */