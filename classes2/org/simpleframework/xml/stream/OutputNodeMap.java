package org.simpleframework.xml.stream;

import java.util.Iterator;
import java.util.LinkedHashMap;

class OutputNodeMap extends LinkedHashMap<String, OutputNode> implements NodeMap<OutputNode> {
  private final OutputNode source;
  
  public OutputNodeMap(OutputNode paramOutputNode) {
    this.source = paramOutputNode;
  }
  
  public OutputNode get(String paramString) {
    return (OutputNode)get(paramString);
  }
  
  public String getName() {
    return this.source.getName();
  }
  
  public OutputNode getNode() {
    return this.source;
  }
  
  public Iterator<String> iterator() {
    return keySet().iterator();
  }
  
  public OutputNode put(String paramString1, String paramString2) {
    OutputAttribute outputAttribute = new OutputAttribute(this.source, paramString1, paramString2);
    if (this.source != null)
      put(paramString1, outputAttribute); 
    return outputAttribute;
  }
  
  public OutputNode remove(String paramString) {
    return (OutputNode)remove(paramString);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\stream\OutputNodeMap.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */