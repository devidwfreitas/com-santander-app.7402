package org.dom4j.tree;

import java.io.Writer;
import org.dom4j.Comment;
import org.dom4j.Element;
import org.dom4j.NodeType;
import org.dom4j.Visitor;

public abstract class AbstractComment extends AbstractCharacterData implements Comment {
  public void accept(Visitor paramVisitor) {
    paramVisitor.visit(this);
  }
  
  public String asXML() {
    return "<!--" + getText() + "-->";
  }
  
  public NodeType getNodeTypeEnum() {
    return NodeType.COMMENT_NODE;
  }
  
  public String getPath(Element paramElement) {
    Element element = getParent();
    return (element != null && element != paramElement) ? (element.getPath(paramElement) + "/comment()") : "comment()";
  }
  
  public String getUniquePath(Element paramElement) {
    Element element = getParent();
    return (element != null && element != paramElement) ? (element.getUniquePath(paramElement) + "/comment()") : "comment()";
  }
  
  protected void toString(StringBuilder paramStringBuilder) {
    super.toString(paramStringBuilder);
    paramStringBuilder.append(" [Comment: \"");
    paramStringBuilder.append(getText());
    paramStringBuilder.append("\"]");
  }
  
  public void write(Writer paramWriter) {
    paramWriter.write("<!--");
    paramWriter.write(getText());
    paramWriter.write("-->");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\tree\AbstractComment.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */