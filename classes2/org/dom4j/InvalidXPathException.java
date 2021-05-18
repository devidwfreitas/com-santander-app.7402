package org.dom4j;

public class InvalidXPathException extends IllegalArgumentException {
  public InvalidXPathException(String paramString) {
    super("Invalid XPath expression: " + paramString);
  }
  
  public InvalidXPathException(String paramString1, String paramString2) {
    super("Invalid XPath expression: " + paramString1 + " " + paramString2);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\InvalidXPathException.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */