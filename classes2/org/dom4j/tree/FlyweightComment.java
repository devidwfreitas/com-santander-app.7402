package org.dom4j.tree;

import org.dom4j.Comment;
import org.dom4j.Element;
import org.dom4j.Node;

public class FlyweightComment extends AbstractComment implements Comment {
  protected String text;
  
  public FlyweightComment(String paramString) {
    this.text = paramString;
  }
  
  protected Node createXPathResult(Element paramElement) {
    return new DefaultComment(paramElement, getText());
  }
  
  public String getText() {
    return this.text;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\tree\FlyweightComment.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */