package org.dom4j.rule.pattern;

import org.dom4j.Node;
import org.dom4j.NodeType;
import org.dom4j.rule.Pattern;

public class NodeTypePattern implements Pattern {
  public static final NodeTypePattern ANY_ATTRIBUTE = new NodeTypePattern(NodeType.ATTRIBUTE_NODE);
  
  public static final NodeTypePattern ANY_COMMENT = new NodeTypePattern(NodeType.COMMENT_NODE);
  
  public static final NodeTypePattern ANY_DOCUMENT = new NodeTypePattern(NodeType.DOCUMENT_NODE);
  
  public static final NodeTypePattern ANY_ELEMENT = new NodeTypePattern(NodeType.ELEMENT_NODE);
  
  public static final NodeTypePattern ANY_PROCESSING_INSTRUCTION = new NodeTypePattern(NodeType.PROCESSING_INSTRUCTION_NODE);
  
  public static final NodeTypePattern ANY_TEXT = new NodeTypePattern(NodeType.TEXT_NODE);
  
  private NodeType nodeType;
  
  public NodeTypePattern(NodeType paramNodeType) {
    this.nodeType = paramNodeType;
  }
  
  public NodeType getMatchType() {
    return this.nodeType;
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
    return (paramNode.getNodeTypeEnum() == this.nodeType);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\rule\pattern\NodeTypePattern.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */