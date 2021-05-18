package org.dom4j.tree;

import org.dom4j.Element;
import org.dom4j.Node;

public class FlyweightEntity extends AbstractEntity {
  protected String name;
  
  protected String text;
  
  protected FlyweightEntity() {}
  
  public FlyweightEntity(String paramString) {
    this.name = paramString;
  }
  
  public FlyweightEntity(String paramString1, String paramString2) {
    this.name = paramString1;
    this.text = paramString2;
  }
  
  protected Node createXPathResult(Element paramElement) {
    return new DefaultEntity(paramElement, getName(), getText());
  }
  
  public String getName() {
    return this.name;
  }
  
  public String getText() {
    return this.text;
  }
  
  public void setText(String paramString) {
    if (this.text != null) {
      this.text = paramString;
      return;
    } 
    throw new UnsupportedOperationException("This Entity is read-only. It cannot be modified");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\tree\FlyweightEntity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */