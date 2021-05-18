package org.dom4j.tree;

import java.io.Writer;
import org.dom4j.Element;
import org.dom4j.Entity;
import org.dom4j.NodeType;
import org.dom4j.Visitor;

public abstract class AbstractEntity extends AbstractNode implements Entity {
  public void accept(Visitor paramVisitor) {
    paramVisitor.visit(this);
  }
  
  public String asXML() {
    return "&" + getName() + ";";
  }
  
  public NodeType getNodeTypeEnum() {
    return NodeType.ENTITY_REFERENCE_NODE;
  }
  
  public String getPath(Element paramElement) {
    Element element = getParent();
    return (element != null && element != paramElement) ? (element.getPath(paramElement) + "/text()") : "text()";
  }
  
  public String getStringValue() {
    return "&" + getName() + ";";
  }
  
  public String getUniquePath(Element paramElement) {
    Element element = getParent();
    return (element != null && element != paramElement) ? (element.getUniquePath(paramElement) + "/text()") : "text()";
  }
  
  public String toString() {
    return super.toString() + " [Entity: &" + getName() + ";]";
  }
  
  public void write(Writer paramWriter) {
    paramWriter.write("&");
    paramWriter.write(getName());
    paramWriter.write(";");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\tree\AbstractEntity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */