package org.simpleframework.xml.strategy;

import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.NodeMap;
import org.simpleframework.xml.stream.OutputNode;

public interface Visitor {
  void read(Type paramType, NodeMap<InputNode> paramNodeMap);
  
  void write(Type paramType, NodeMap<OutputNode> paramNodeMap);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\strategy\Visitor.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */