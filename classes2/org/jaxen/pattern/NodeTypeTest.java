package org.jaxen.pattern;

import org.jaxen.Context;

public class NodeTypeTest extends NodeTest {
  public static final NodeTypeTest ATTRIBUTE_TEST;
  
  public static final NodeTypeTest COMMENT_TEST;
  
  public static final NodeTypeTest DOCUMENT_TEST = new NodeTypeTest((short)9);
  
  public static final NodeTypeTest ELEMENT_TEST = new NodeTypeTest((short)1);
  
  public static final NodeTypeTest NAMESPACE_TEST;
  
  public static final NodeTypeTest PROCESSING_INSTRUCTION_TEST;
  
  public static final NodeTypeTest TEXT_TEST;
  
  private short nodeType;
  
  static {
    ATTRIBUTE_TEST = new NodeTypeTest((short)2);
    COMMENT_TEST = new NodeTypeTest((short)8);
    TEXT_TEST = new NodeTypeTest((short)3);
    PROCESSING_INSTRUCTION_TEST = new NodeTypeTest((short)7);
    NAMESPACE_TEST = new NodeTypeTest((short)13);
  }
  
  public NodeTypeTest(short paramShort) {
    this.nodeType = paramShort;
  }
  
  public short getMatchType() {
    return this.nodeType;
  }
  
  public double getPriority() {
    return -0.5D;
  }
  
  public String getText() {
    switch (this.nodeType) {
      default:
        return "";
      case 1:
        return "child()";
      case 2:
        return "@*";
      case 13:
        return "namespace()";
      case 9:
        return "/";
      case 8:
        return "comment()";
      case 3:
        return "text()";
      case 7:
        break;
    } 
    return "processing-instruction()";
  }
  
  public boolean matches(Object paramObject, Context paramContext) {
    return (this.nodeType == paramContext.getNavigator().getNodeType(paramObject));
  }
  
  public String toString() {
    return super.toString() + "[ type: " + this.nodeType + " ]";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\pattern\NodeTypeTest.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */