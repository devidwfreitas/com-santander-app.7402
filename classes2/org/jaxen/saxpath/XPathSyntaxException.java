package org.jaxen.saxpath;

public class XPathSyntaxException extends SAXPathException {
  private static final String lineSeparator = System.getProperty("line.separator");
  
  private static final long serialVersionUID = 3567675610742422397L;
  
  private int position;
  
  private String xpath;
  
  public XPathSyntaxException(String paramString1, int paramInt, String paramString2) {
    super(paramString2);
    this.position = paramInt;
    this.xpath = paramString1;
  }
  
  private String getPositionMarker() {
    int j = getPosition();
    StringBuffer stringBuffer = new StringBuffer(j + 1);
    for (int i = 0; i < j; i++)
      stringBuffer.append(" "); 
    stringBuffer.append("^");
    return stringBuffer.toString();
  }
  
  public String getMultilineMessage() {
    StringBuffer stringBuffer = new StringBuffer();
    stringBuffer.append(getMessage());
    stringBuffer.append(lineSeparator);
    stringBuffer.append(getXPath());
    stringBuffer.append(lineSeparator);
    stringBuffer.append(getPositionMarker());
    return stringBuffer.toString();
  }
  
  public int getPosition() {
    return this.position;
  }
  
  public String getXPath() {
    return this.xpath;
  }
  
  public String toString() {
    return getClass() + ": " + getXPath() + ": " + getPosition() + ": " + getMessage();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\saxpath\XPathSyntaxException.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */