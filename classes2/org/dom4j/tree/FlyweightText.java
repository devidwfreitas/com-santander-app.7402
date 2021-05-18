package org.dom4j.tree;

import org.dom4j.Element;
import org.dom4j.Node;
import org.dom4j.Text;

public class FlyweightText extends AbstractText implements Text {
  protected String text;
  
  public FlyweightText(String paramString) {
    this.text = paramString;
  }
  
  protected Node createXPathResult(Element paramElement) {
    return new DefaultText(paramElement, getText());
  }
  
  public String getText() {
    return this.text;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\tree\FlyweightText.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */