package org.simpleframework.xml.strategy;

import java.util.Map;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.NodeMap;
import org.simpleframework.xml.stream.OutputNode;

public interface Strategy {
  Value read(Type paramType, NodeMap<InputNode> paramNodeMap, Map paramMap);
  
  boolean write(Type paramType, Object paramObject, NodeMap<OutputNode> paramNodeMap, Map paramMap);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\strategy\Strategy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */