package org.jaxen.pattern;

import org.jaxen.Context;
import org.jaxen.Navigator;

public class NameTest extends NodeTest {
  private String name;
  
  private short nodeType;
  
  public NameTest(String paramString, short paramShort) {
    this.name = paramString;
    this.nodeType = paramShort;
  }
  
  public short getMatchType() {
    return this.nodeType;
  }
  
  public double getPriority() {
    return 0.0D;
  }
  
  public String getText() {
    return (this.nodeType == 2) ? ("@" + this.name) : this.name;
  }
  
  public boolean matches(Object paramObject, Context paramContext) {
    Navigator navigator = paramContext.getNavigator();
    return (this.nodeType == 1) ? (!(!navigator.isElement(paramObject) || !this.name.equals(navigator.getElementName(paramObject)))) : ((this.nodeType == 2) ? (!(!navigator.isAttribute(paramObject) || !this.name.equals(navigator.getAttributeName(paramObject)))) : (navigator.isElement(paramObject) ? this.name.equals(navigator.getElementName(paramObject)) : (navigator.isAttribute(paramObject) ? this.name.equals(navigator.getAttributeName(paramObject)) : false)));
  }
  
  public String toString() {
    return super.toString() + "[ name: " + this.name + " type: " + this.nodeType + " ]";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\pattern\NameTest.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */