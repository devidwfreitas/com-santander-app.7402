package org.dom4j.rule;

import org.dom4j.Node;
import org.dom4j.NodeFilter;
import org.dom4j.NodeType;

public interface Pattern extends NodeFilter {
  public static final double DEFAULT_PRIORITY = 0.5D;
  
  NodeType getMatchType();
  
  String getMatchesNodeName();
  
  double getPriority();
  
  Pattern[] getUnionPatterns();
  
  boolean matches(Node paramNode);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\rule\Pattern.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */