package org.dom4j.util;

import org.dom4j.DocumentHelper;
import org.dom4j.Element;
import org.dom4j.QName;
import org.xml.sax.ErrorHandler;
import org.xml.sax.SAXParseException;

public class XMLErrorHandler implements ErrorHandler {
  protected static final QName ERROR_QNAME = QName.get("error");
  
  protected static final QName FATALERROR_QNAME = QName.get("fatalError");
  
  protected static final QName WARNING_QNAME = QName.get("warning");
  
  private QName errorQName = ERROR_QNAME;
  
  private Element errors = DocumentHelper.createElement("errors");
  
  private QName fatalErrorQName = FATALERROR_QNAME;
  
  private QName warningQName = WARNING_QNAME;
  
  public XMLErrorHandler() {}
  
  public XMLErrorHandler(Element paramElement) {}
  
  protected void addException(Element paramElement, SAXParseException paramSAXParseException) {
    paramElement.addAttribute("column", Integer.toString(paramSAXParseException.getColumnNumber()));
    paramElement.addAttribute("line", Integer.toString(paramSAXParseException.getLineNumber()));
    String str = paramSAXParseException.getPublicId();
    if (str != null && str.length() > 0)
      paramElement.addAttribute("publicID", str); 
    str = paramSAXParseException.getSystemId();
    if (str != null && str.length() > 0)
      paramElement.addAttribute("systemID", str); 
    paramElement.addText(paramSAXParseException.getMessage());
  }
  
  public void error(SAXParseException paramSAXParseException) {
    addException(this.errors.addElement(this.errorQName), paramSAXParseException);
  }
  
  public void fatalError(SAXParseException paramSAXParseException) {
    addException(this.errors.addElement(this.fatalErrorQName), paramSAXParseException);
  }
  
  public QName getErrorQName() {
    return this.errorQName;
  }
  
  public Element getErrors() {
    return this.errors;
  }
  
  public QName getFatalErrorQName() {
    return this.fatalErrorQName;
  }
  
  public QName getWarningQName() {
    return this.warningQName;
  }
  
  public void setErrorQName(QName paramQName) {
    this.errorQName = paramQName;
  }
  
  public void setErrors(Element paramElement) {
    this.errors = paramElement;
  }
  
  public void setFatalErrorQName(QName paramQName) {
    this.fatalErrorQName = paramQName;
  }
  
  public void setWarningQName(QName paramQName) {
    this.warningQName = paramQName;
  }
  
  public void warning(SAXParseException paramSAXParseException) {
    addException(this.errors.addElement(this.warningQName), paramSAXParseException);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4\\util\XMLErrorHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */