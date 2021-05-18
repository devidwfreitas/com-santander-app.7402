package org.simpleframework.xml.stream;

class HyphenBuilder$Parser extends Splitter {
  private HyphenBuilder$Parser(String paramString) {
    super(paramString);
  }
  
  protected void commit(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    this.builder.append(paramArrayOfchar, paramInt1, paramInt2);
    if (paramInt1 + paramInt2 < this.count)
      this.builder.append('-'); 
  }
  
  protected void parse(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    paramArrayOfchar[paramInt1] = toLower(paramArrayOfchar[paramInt1]);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\stream\HyphenBuilder$Parser.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */