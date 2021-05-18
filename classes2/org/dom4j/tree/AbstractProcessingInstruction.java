package org.dom4j.tree;

import java.io.Writer;
import java.util.HashMap;
import java.util.Map;
import java.util.StringTokenizer;
import org.dom4j.Element;
import org.dom4j.NodeType;
import org.dom4j.ProcessingInstruction;
import org.dom4j.Visitor;

public abstract class AbstractProcessingInstruction extends AbstractNode implements ProcessingInstruction {
  private String getName(StringTokenizer paramStringTokenizer) {
    StringBuilder stringBuilder = new StringBuilder(paramStringTokenizer.nextToken());
    while (paramStringTokenizer.hasMoreTokens()) {
      String str = paramStringTokenizer.nextToken();
      if (!str.equals("="))
        stringBuilder.append(str); 
    } 
    return stringBuilder.toString().trim();
  }
  
  private String getValue(StringTokenizer paramStringTokenizer) {
    String str = paramStringTokenizer.nextToken();
    StringBuilder stringBuilder = new StringBuilder();
    while (paramStringTokenizer.hasMoreTokens() && !str.equals("'") && !str.equals("\""))
      str = paramStringTokenizer.nextToken(); 
    while (paramStringTokenizer.hasMoreTokens()) {
      String str1 = paramStringTokenizer.nextToken();
      if (!str.equals(str1))
        stringBuilder.append(str1); 
    } 
    return stringBuilder.toString();
  }
  
  public void accept(Visitor paramVisitor) {
    paramVisitor.visit(this);
  }
  
  public String asXML() {
    return "<?" + getName() + " " + getText() + "?>";
  }
  
  public String getName() {
    return getTarget();
  }
  
  public NodeType getNodeTypeEnum() {
    return NodeType.PROCESSING_INSTRUCTION_NODE;
  }
  
  public String getPath(Element paramElement) {
    Element element = getParent();
    return (element != null && element != paramElement) ? (element.getPath(paramElement) + "/processing-instruction()") : "processing-instruction()";
  }
  
  public String getUniquePath(Element paramElement) {
    Element element = getParent();
    return (element != null && element != paramElement) ? (element.getUniquePath(paramElement) + "/processing-instruction()") : "processing-instruction()";
  }
  
  protected Map<String, String> parseValues(String paramString) {
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    StringTokenizer stringTokenizer = new StringTokenizer(paramString, " ='\"", true);
    while (stringTokenizer.hasMoreTokens()) {
      String str = getName(stringTokenizer);
      if (stringTokenizer.hasMoreTokens())
        hashMap.put(str, getValue(stringTokenizer)); 
    } 
    return (Map)hashMap;
  }
  
  public boolean removeValue(String paramString) {
    return false;
  }
  
  public void setName(String paramString) {
    setTarget(paramString);
  }
  
  public void setValue(String paramString1, String paramString2) {
    throw new UnsupportedOperationException("This PI is read-only and cannot be modified");
  }
  
  public void setValues(Map<String, String> paramMap) {
    throw new UnsupportedOperationException("This PI is read-only and cannot be modified");
  }
  
  public String toString() {
    return super.toString() + " [ProcessingInstruction: &" + getName() + ";]";
  }
  
  protected String toString(Map<String, String> paramMap) {
    StringBuilder stringBuilder = new StringBuilder();
    for (Map.Entry<String, String> entry : paramMap.entrySet()) {
      String str1 = (String)entry.getKey();
      String str2 = (String)entry.getValue();
      stringBuilder.append(str1);
      stringBuilder.append("=\"");
      stringBuilder.append(str2);
      stringBuilder.append("\" ");
    } 
    stringBuilder.setLength(stringBuilder.length() - 1);
    return stringBuilder.toString();
  }
  
  public void write(Writer paramWriter) {
    paramWriter.write("<?");
    paramWriter.write(getName());
    paramWriter.write(" ");
    paramWriter.write(getText());
    paramWriter.write("?>");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\tree\AbstractProcessingInstruction.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */