package org.dom4j.tree;

import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;
import org.dom4j.CDATA;
import org.dom4j.NodeType;
import org.dom4j.Visitor;

public abstract class AbstractCDATA extends AbstractCharacterData implements CDATA {
  public void accept(Visitor paramVisitor) {
    paramVisitor.visit(this);
  }
  
  public String asXML() {
    StringWriter stringWriter = new StringWriter();
    try {
      write(stringWriter);
    } catch (IOException iOException) {}
    return stringWriter.toString();
  }
  
  public NodeType getNodeTypeEnum() {
    return NodeType.CDATA_SECTION_NODE;
  }
  
  protected void toString(StringBuilder paramStringBuilder) {
    super.toString(paramStringBuilder);
    paramStringBuilder.append(" [CDATA: \"");
    paramStringBuilder.append(getText());
    paramStringBuilder.append("\"]");
  }
  
  public void write(Writer paramWriter) {
    paramWriter.write("<![CDATA[");
    if (getText() != null)
      paramWriter.write(getText()); 
    paramWriter.write("]]>");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\tree\AbstractCDATA.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */