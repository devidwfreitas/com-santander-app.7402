package org.dom4j.rule.pattern;

import org.dom4j.Node;
import org.dom4j.NodeFilter;
import org.dom4j.NodeType;
import org.dom4j.rule.Pattern;

public class DefaultPattern implements Pattern {
  private NodeFilter filter;
  
  public DefaultPattern(NodeFilter paramNodeFilter) {
    this.filter = paramNodeFilter;
  }
  
  public NodeType getMatchType() {
    return NodeType.ANY_NODE;
  }
  
  public String getMatchesNodeName() {
    return null;
  }
  
  public double getPriority() {
    return 0.5D;
  }
  
  public Pattern[] getUnionPatterns() {
    return null;
  }
  
  public boolean matches(Node paramNode) {
    return this.filter.matches(paramNode);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\rule\pattern\DefaultPattern.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */