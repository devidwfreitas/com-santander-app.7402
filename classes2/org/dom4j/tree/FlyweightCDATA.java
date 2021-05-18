package org.dom4j.tree;

import org.dom4j.CDATA;
import org.dom4j.Element;
import org.dom4j.Node;

public class FlyweightCDATA extends AbstractCDATA implements CDATA {
  protected String text;
  
  public FlyweightCDATA(String paramString) {
    this.text = paramString;
  }
  
  protected Node createXPathResult(Element paramElement) {
    return new DefaultCDATA(paramElement, getText());
  }
  
  public String getText() {
    return this.text;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\tree\FlyweightCDATA.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */