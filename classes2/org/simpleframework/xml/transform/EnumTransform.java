package org.simpleframework.xml.transform;

class EnumTransform implements Transform<Enum> {
  private final Class type;
  
  public EnumTransform(Class paramClass) {
    this.type = paramClass;
  }
  
  public Enum read(String paramString) {
    return Enum.valueOf(this.type, paramString);
  }
  
  public String write(Enum paramEnum) {
    return paramEnum.name();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\transform\EnumTransform.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */