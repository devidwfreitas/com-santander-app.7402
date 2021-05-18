package org.dom4j.tree;

import org.dom4j.Element;

public class DefaultEntity extends FlyweightEntity {
  private Element parent;
  
  public DefaultEntity(String paramString) {
    super(paramString);
  }
  
  public DefaultEntity(String paramString1, String paramString2) {
    super(paramString1, paramString2);
  }
  
  public DefaultEntity(Element paramElement, String paramString1, String paramString2) {
    super(paramString1, paramString2);
    this.parent = paramElement;
  }
  
  public Element getParent() {
    return this.parent;
  }
  
  public boolean isReadOnly() {
    return false;
  }
  
  public void setName(String paramString) {
    this.name = paramString;
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


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\tree\DefaultEntity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */