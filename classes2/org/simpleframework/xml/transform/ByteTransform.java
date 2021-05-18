package org.simpleframework.xml.transform;

class ByteTransform implements Transform<Byte> {
  public Byte read(String paramString) {
    return Byte.valueOf(paramString);
  }
  
  public String write(Byte paramByte) {
    return paramByte.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\transform\ByteTransform.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */