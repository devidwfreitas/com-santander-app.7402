package org.simpleframework.xml.transform;

class ShortTransform implements Transform<Short> {
  public Short read(String paramString) {
    return Short.valueOf(paramString);
  }
  
  public String write(Short paramShort) {
    return paramShort.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\transform\ShortTransform.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */