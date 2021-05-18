package org.dom4j.tree;

import java.io.Writer;
import org.dom4j.NodeType;
import org.dom4j.Text;
import org.dom4j.Visitor;

public abstract class AbstractText extends AbstractCharacterData implements Text {
  public void accept(Visitor paramVisitor) {
    paramVisitor.visit(this);
  }
  
  public String asXML() {
    return getText();
  }
  
  public NodeType getNodeTypeEnum() {
    return NodeType.TEXT_NODE;
  }
  
  public String toString() {
    return super.toString() + " [Text: \"" + getText() + "\"]";
  }
  
  public void write(Writer paramWriter) {
    paramWriter.write(getText());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\tree\AbstractText.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */