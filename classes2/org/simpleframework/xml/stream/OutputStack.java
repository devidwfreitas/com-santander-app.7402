package org.simpleframework.xml.stream;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;

class OutputStack extends ArrayList<OutputNode> {
  private final Set active;
  
  public OutputStack(Set paramSet) {
    this.active = paramSet;
  }
  
  public OutputNode bottom() {
    return (size() <= 0) ? null : get(0);
  }
  
  public Iterator<OutputNode> iterator() {
    return new OutputStack$Sequence(this);
  }
  
  public OutputNode pop() {
    int i = size();
    return (i <= 0) ? null : purge(i - 1);
  }
  
  public OutputNode purge(int paramInt) {
    OutputNode outputNode = remove(paramInt);
    if (outputNode != null)
      this.active.remove(outputNode); 
    return outputNode;
  }
  
  public OutputNode push(OutputNode paramOutputNode) {
    this.active.add(paramOutputNode);
    add(paramOutputNode);
    return paramOutputNode;
  }
  
  public OutputNode top() {
    int i = size();
    return (i <= 0) ? null : get(i - 1);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\stream\OutputStack.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */