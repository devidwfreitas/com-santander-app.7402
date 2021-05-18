package org.simpleframework.xml.stream;

class CamelCaseBuilder$Attribute extends Splitter {
  private boolean capital;
  
  private CamelCaseBuilder$Attribute(String paramString) {
    super(paramString);
  }
  
  protected void commit(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    this.builder.append(paramArrayOfchar, paramInt1, paramInt2);
  }
  
  protected void parse(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    if (CamelCaseBuilder.this.attribute || this.capital)
      paramArrayOfchar[paramInt1] = toUpper(paramArrayOfchar[paramInt1]); 
    this.capital = true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\stream\CamelCaseBuilder$Attribute.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */