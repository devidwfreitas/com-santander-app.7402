package org.dom4j.tree;

import java.io.Writer;
import java.util.Iterator;
import java.util.List;
import org.dom4j.DocumentType;
import org.dom4j.Element;
import org.dom4j.NodeType;
import org.dom4j.Visitor;
import org.dom4j.dtd.InternalDeclaration;

public abstract class AbstractDocumentType extends AbstractNode implements DocumentType {
  public void accept(Visitor paramVisitor) {
    paramVisitor.visit(this);
  }
  
  public String asXML() {
    StringBuilder stringBuilder = new StringBuilder();
    asXML(stringBuilder);
    return stringBuilder.toString();
  }
  
  protected void asXML(StringBuilder paramStringBuilder) {
    paramStringBuilder.append("<!DOCTYPE ");
    paramStringBuilder.append(getElementName());
    boolean bool2 = false;
    String str = getPublicID();
    boolean bool1 = bool2;
    if (str != null) {
      bool1 = bool2;
      if (str.length() > 0) {
        paramStringBuilder.append(" PUBLIC ");
        paramStringBuilder.append('"');
        paramStringBuilder.append(str);
        paramStringBuilder.append('"');
        bool1 = true;
      } 
    } 
    str = getSystemID();
    if (str != null && str.length() > 0) {
      if (!bool1)
        paramStringBuilder.append(" SYSTEM"); 
      paramStringBuilder.append(" \"");
      paramStringBuilder.append(str);
      paramStringBuilder.append('"');
    } 
    paramStringBuilder.append('>');
  }
  
  public String getName() {
    return getElementName();
  }
  
  public NodeType getNodeTypeEnum() {
    return NodeType.DOCUMENT_TYPE_NODE;
  }
  
  public String getPath(Element paramElement) {
    return "";
  }
  
  public String getText() {
    List list = getInternalDeclarations();
    if (list != null && list.size() > 0) {
      StringBuilder stringBuilder = new StringBuilder();
      Iterator<InternalDeclaration> iterator = list.iterator();
      while (iterator.hasNext()) {
        stringBuilder.append(((InternalDeclaration)iterator.next()).toString());
        stringBuilder.append('\n');
      } 
      if (stringBuilder.length() > 0)
        stringBuilder.setLength(stringBuilder.length() - 1); 
      return stringBuilder.toString();
    } 
    return "";
  }
  
  public String getUniquePath(Element paramElement) {
    return "";
  }
  
  public void setName(String paramString) {
    setElementName(paramString);
  }
  
  protected void toString(StringBuilder paramStringBuilder) {
    super.toString(paramStringBuilder);
    paramStringBuilder.append(" [DocumentType: ");
    asXML(paramStringBuilder);
    paramStringBuilder.append(']');
  }
  
  public void write(Writer paramWriter) {
    paramWriter.write("<!DOCTYPE ");
    paramWriter.write(getElementName());
    boolean bool2 = false;
    String str = getPublicID();
    boolean bool1 = bool2;
    if (str != null) {
      bool1 = bool2;
      if (str.length() > 0) {
        paramWriter.write(" PUBLIC \"");
        paramWriter.write(str);
        paramWriter.write(34);
        bool1 = true;
      } 
    } 
    str = getSystemID();
    if (str != null && str.length() > 0) {
      if (!bool1)
        paramWriter.write(" SYSTEM"); 
      paramWriter.write(" \"");
      paramWriter.write(str);
      paramWriter.write(34);
    } 
    List list = getInternalDeclarations();
    if (list != null && list.size() > 0) {
      paramWriter.write(" [");
      for (InternalDeclaration internalDeclaration : list) {
        paramWriter.write("\n  ");
        paramWriter.write(internalDeclaration.toString());
      } 
      paramWriter.write("\n]");
    } 
    paramWriter.write(62);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\tree\AbstractDocumentType.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */