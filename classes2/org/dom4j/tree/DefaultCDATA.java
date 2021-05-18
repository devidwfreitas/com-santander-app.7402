package org.dom4j.tree;

import org.dom4j.Element;

public class DefaultCDATA extends FlyweightCDATA {
  private Element parent;
  
  public DefaultCDATA(String paramString) {
    super(paramString);
  }
  
  public DefaultCDATA(Element paramElement, String paramString) {
    super(paramString);
    this.parent = paramElement;
  }
  
  public Element getParent() {
    return this.parent;
  }
  
  public boolean isReadOnly() {
    return false;
  }
  
  public void setParent(Element paramElement) {
    this.parent = paramElement;
  }
  
  public void setText(String paramString) {
    this.text = paramString;
  }
  
  public boolean supportsParent() {
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\tree\DefaultCDATA.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */