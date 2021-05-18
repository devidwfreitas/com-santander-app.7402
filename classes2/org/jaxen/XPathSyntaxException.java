package org.jaxen;

import org.jaxen.saxpath.XPathSyntaxException;

public class XPathSyntaxException extends JaxenException {
  private static final long serialVersionUID = 1980601567207604059L;
  
  private int position;
  
  private String xpath;
  
  public XPathSyntaxException(String paramString1, int paramInt, String paramString2) {
    super(paramString2);
    this.xpath = paramString1;
    this.position = paramInt;
  }
  
  public XPathSyntaxException(XPathSyntaxException paramXPathSyntaxException) {
    super((Throwable)paramXPathSyntaxException);
    this.xpath = paramXPathSyntaxException.getXPath();
    this.position = paramXPathSyntaxException.getPosition();
  }
  
  public String getMultilineMessage() {
    StringBuffer stringBuffer = new StringBuffer(getMessage());
    stringBuffer.append("\n");
    stringBuffer.append(getXPath());
    stringBuffer.append("\n");
    stringBuffer.append(getPositionMarker());
    return stringBuffer.toString();
  }
  
  public int getPosition() {
    return this.position;
  }
  
  public String getPositionMarker() {
    StringBuffer stringBuffer = new StringBuffer();
    int j = getPosition();
    for (int i = 0; i < j; i++)
      stringBuffer.append(" "); 
    stringBuffer.append("^");
    return stringBuffer.toString();
  }
  
  public String getXPath() {
    return this.xpath;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\XPathSyntaxException.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */