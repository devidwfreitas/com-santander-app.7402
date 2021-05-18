package org.simpleframework.xml.stream;

public class HyphenStyle implements Style {
  private final Builder builder = new Builder(this.style);
  
  private final Style style = new HyphenBuilder();
  
  public String getAttribute(String paramString) {
    return this.builder.getAttribute(paramString);
  }
  
  public String getElement(String paramString) {
    return this.builder.getElement(paramString);
  }
  
  public void setAttribute(String paramString1, String paramString2) {
    this.builder.setAttribute(paramString1, paramString2);
  }
  
  public void setElement(String paramString1, String paramString2) {
    this.builder.setElement(paramString1, paramString2);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\stream\HyphenStyle.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */