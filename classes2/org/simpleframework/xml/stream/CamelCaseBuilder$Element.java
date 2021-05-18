package org.simpleframework.xml.stream;

class CamelCaseBuilder$Element extends CamelCaseBuilder$Attribute {
  private boolean capital;
  
  private CamelCaseBuilder$Element(String paramString) {
    super(paramCamelCaseBuilder, paramString, (CamelCaseBuilder$1)null);
  }
  
  protected void parse(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    if (CamelCaseBuilder.this.element || this.capital)
      paramArrayOfchar[paramInt1] = toUpper(paramArrayOfchar[paramInt1]); 
    this.capital = true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\stream\CamelCaseBuilder$Element.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */