package org.dom4j;

public class XPathException extends RuntimeException {
  private String xpath;
  
  public XPathException(String paramString) {
    super("Exception occurred evaluting XPath: " + paramString);
    this.xpath = paramString;
  }
  
  public XPathException(String paramString, Exception paramException) {
    super("Exception occurred evaluting XPath: " + paramString + ". Exception: " + paramException.getMessage());
    this.xpath = paramString;
  }
  
  public XPathException(String paramString1, String paramString2) {
    super("Exception occurred evaluting XPath: " + paramString1 + " " + paramString2);
    this.xpath = paramString1;
  }
  
  public String getXPath() {
    return this.xpath;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\XPathException.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */