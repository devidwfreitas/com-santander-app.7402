package org.simpleframework.xml.stream;

import java.util.Iterator;
import java.util.LinkedHashMap;

class InputNodeMap extends LinkedHashMap<String, InputNode> implements NodeMap<InputNode> {
  private final InputNode source;
  
  protected InputNodeMap(InputNode paramInputNode) {
    this.source = paramInputNode;
  }
  
  public InputNodeMap(InputNode paramInputNode, EventNode paramEventNode) {
    this.source = paramInputNode;
    build(paramEventNode);
  }
  
  private void build(EventNode paramEventNode) {
    for (Attribute attribute : paramEventNode) {
      InputAttribute inputAttribute = new InputAttribute(this.source, attribute);
      if (!attribute.isReserved())
        put(inputAttribute.getName(), inputAttribute); 
    } 
  }
  
  public InputNode get(String paramString) {
    return (InputNode)get(paramString);
  }
  
  public String getName() {
    return this.source.getName();
  }
  
  public InputNode getNode() {
    return this.source;
  }
  
  public Iterator<String> iterator() {
    return keySet().iterator();
  }
  
  public InputNode put(String paramString1, String paramString2) {
    InputAttribute inputAttribute = new InputAttribute(this.source, paramString1, paramString2);
    if (paramString1 != null)
      put(paramString1, inputAttribute); 
    return inputAttribute;
  }
  
  public InputNode remove(String paramString) {
    return (InputNode)remove(paramString);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\stream\InputNodeMap.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */