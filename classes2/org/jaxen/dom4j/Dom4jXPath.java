package org.jaxen.dom4j;

import org.jaxen.BaseXPath;

public class Dom4jXPath extends BaseXPath {
  private static final long serialVersionUID = -75510941087659775L;
  
  public Dom4jXPath(String paramString) {
    super(paramString, DocumentNavigator.getInstance());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\dom4j\Dom4jXPath.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */