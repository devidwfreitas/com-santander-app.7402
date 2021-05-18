package org.dom4j.tree;

import java.util.Map;
import org.dom4j.Element;

public class DefaultProcessingInstruction extends FlyweightProcessingInstruction {
  private Element parent;
  
  public DefaultProcessingInstruction(String paramString1, String paramString2) {
    super(paramString1, paramString2);
  }
  
  public DefaultProcessingInstruction(String paramString, Map<String, String> paramMap) {
    super(paramString, paramMap);
  }
  
  public DefaultProcessingInstruction(Element paramElement, String paramString1, String paramString2) {
    super(paramString1, paramString2);
    this.parent = paramElement;
  }
  
  public Element getParent() {
    return this.parent;
  }
  
  public boolean isReadOnly() {
    return false;
  }
  
  public void setParent(Element paramElement) {
    this.parent = paramElement;
  }
  
  public void setTarget(String paramString) {
    this.target = paramString;
  }
  
  public void setText(String paramString) {
    this.text = paramString;
    this.values = parseValues(paramString);
  }
  
  public void setValue(String paramString1, String paramString2) {
    this.values.put(paramString1, paramString2);
  }
  
  public void setValues(Map<String, String> paramMap) {
    this.values = paramMap;
    this.text = toString(paramMap);
  }
  
  public boolean supportsParent() {
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\tree\DefaultProcessingInstruction.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */