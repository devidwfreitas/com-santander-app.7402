package org.simpleframework.xml.stream;

class HyphenBuilder implements Style {
  public String getAttribute(String paramString) {
    String str = null;
    if (paramString != null)
      str = (new HyphenBuilder$Parser(this, paramString, null)).process(); 
    return str;
  }
  
  public String getElement(String paramString) {
    String str = null;
    if (paramString != null)
      str = (new HyphenBuilder$Parser(this, paramString, null)).process(); 
    return str;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\stream\HyphenBuilder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */