package org.jaxen.xom;

import org.jaxen.BaseXPath;
import org.jaxen.Navigator;

public class XOMXPath extends BaseXPath {
  private static final long serialVersionUID = -5332108546921857671L;
  
  public XOMXPath(String paramString) {
    super(paramString, (Navigator)new DocumentNavigator());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\xom\XOMXPath.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */