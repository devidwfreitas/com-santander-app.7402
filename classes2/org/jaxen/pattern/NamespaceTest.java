package org.jaxen.pattern;

import org.jaxen.Context;
import org.jaxen.Navigator;

public class NamespaceTest extends NodeTest {
  private short nodeType;
  
  private String prefix;
  
  public NamespaceTest(String paramString, short paramShort) {
    String str = paramString;
    if (paramString == null)
      str = ""; 
    this.prefix = str;
    this.nodeType = paramShort;
  }
  
  public short getMatchType() {
    return this.nodeType;
  }
  
  public double getPriority() {
    return -0.25D;
  }
  
  public String getText() {
    return this.prefix + ":";
  }
  
  protected String getURI(Object paramObject, Context paramContext) {
    String str = paramContext.getNavigator().translateNamespacePrefixToUri(this.prefix, paramObject);
    paramObject = str;
    if (str == null)
      paramObject = paramContext.getContextSupport().translateNamespacePrefixToUri(this.prefix); 
    Object object = paramObject;
    if (paramObject == null)
      object = ""; 
    return (String)object;
  }
  
  public boolean matches(Object paramObject, Context paramContext) {
    Navigator navigator = paramContext.getNavigator();
    String str = getURI(paramObject, paramContext);
    return (this.nodeType == 1) ? (!(!navigator.isElement(paramObject) || !str.equals(navigator.getElementNamespaceUri(paramObject)))) : ((this.nodeType == 2) ? (!(!navigator.isAttribute(paramObject) || !str.equals(navigator.getAttributeNamespaceUri(paramObject)))) : false);
  }
  
  public String toString() {
    return super.toString() + "[ prefix: " + this.prefix + " type: " + this.nodeType + " ]";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\pattern\NamespaceTest.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */