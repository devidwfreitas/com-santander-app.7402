package org.dom4j.tree;

import java.util.Collections;
import java.util.Map;
import org.dom4j.Element;
import org.dom4j.Node;

public class FlyweightProcessingInstruction extends AbstractProcessingInstruction {
  protected String target;
  
  protected String text;
  
  protected Map<String, String> values;
  
  public FlyweightProcessingInstruction() {}
  
  public FlyweightProcessingInstruction(String paramString1, String paramString2) {
    this.target = paramString1;
    this.text = paramString2;
    this.values = parseValues(paramString2);
  }
  
  public FlyweightProcessingInstruction(String paramString, Map<String, String> paramMap) {
    this.target = paramString;
    this.values = paramMap;
    this.text = toString(paramMap);
  }
  
  protected Node createXPathResult(Element paramElement) {
    return new DefaultProcessingInstruction(paramElement, getTarget(), getText());
  }
  
  public String getTarget() {
    return this.target;
  }
  
  public String getText() {
    return this.text;
  }
  
  public String getValue(String paramString) {
    String str = this.values.get(paramString);
    paramString = str;
    if (str == null)
      paramString = ""; 
    return paramString;
  }
  
  public Map<String, String> getValues() {
    return Collections.unmodifiableMap(this.values);
  }
  
  public void setTarget(String paramString) {
    throw new UnsupportedOperationException("This PI is read-only and cannot be modified");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\tree\FlyweightProcessingInstruction.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */