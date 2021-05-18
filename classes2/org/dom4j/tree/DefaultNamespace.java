package org.dom4j.tree;

import org.dom4j.Element;
import org.dom4j.Namespace;

public class DefaultNamespace extends Namespace {
  private Element parent;
  
  public DefaultNamespace(String paramString1, String paramString2) {
    super(paramString1, paramString2);
  }
  
  public DefaultNamespace(Element paramElement, String paramString1, String paramString2) {
    super(paramString1, paramString2);
    this.parent = paramElement;
  }
  
  protected int createHashCode() {
    int j = super.createHashCode();
    int i = j;
    if (this.parent != null)
      i = j ^ this.parent.hashCode(); 
    return i;
  }
  
  public boolean equals(Object paramObject) {
    return (paramObject instanceof DefaultNamespace && ((DefaultNamespace)paramObject).parent == this.parent) ? super.equals(paramObject) : false;
  }
  
  public Element getParent() {
    return this.parent;
  }
  
  public int hashCode() {
    return super.hashCode();
  }
  
  public boolean isReadOnly() {
    return false;
  }
  
  public void setParent(Element paramElement) {
    this.parent = paramElement;
  }
  
  public boolean supportsParent() {
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\tree\DefaultNamespace.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */