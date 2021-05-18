package org.dom4j;

import java.util.EnumSet;
import org.dom4j.tree.BackedList;

public final class NodeHelper {
  private static final EnumSet<NodeType> BRANCH_TYPE = EnumSet.of(NodeType.ELEMENT_NODE, NodeType.DOCUMENT_NODE);
  
  public static BackedList<Element> appendElementLocal(Node paramNode, BackedList<Element> paramBackedList) {
    paramNode = nodeAsElement(paramNode);
    if (paramNode != null)
      paramBackedList.addLocal(paramNode); 
    return paramBackedList;
  }
  
  public static BackedList<Element> appendElementNamedLocal(Node paramNode, BackedList<Element> paramBackedList, String paramString) {
    paramNode = nodeAsElement(paramNode);
    if (paramNode != null && paramString.equals(paramNode.getName()))
      paramBackedList.addLocal(paramNode); 
    return paramBackedList;
  }
  
  public static BackedList<Element> appendElementQNamedLocal(Node paramNode, BackedList<Element> paramBackedList, QName paramQName) {
    paramNode = nodeAsElement(paramNode);
    if (paramNode != null && paramQName.equals(paramNode.getQName()))
      paramBackedList.addLocal(paramNode); 
    return paramBackedList;
  }
  
  public static String getAttributeValue(Attribute paramAttribute, String paramString) {
    return (paramAttribute == null) ? paramString : paramAttribute.getValue();
  }
  
  public static Attribute nodeAsAttribute(Node paramNode) {
    if (paramNode.getNodeTypeEnum() == NodeType.ATTRIBUTE_NODE) {
      assert paramNode instanceof Attribute;
      return (Attribute)paramNode;
    } 
    return null;
  }
  
  public static Branch nodeAsBranch(Node paramNode) {
    if (BRANCH_TYPE.contains(Short.valueOf(paramNode.getNodeType()))) {
      assert paramNode instanceof Branch;
      return (Branch)paramNode;
    } 
    return null;
  }
  
  public static Document nodeAsDocument(Node paramNode) {
    if (paramNode.getNodeTypeEnum() == NodeType.DOCUMENT_NODE) {
      assert paramNode instanceof Document;
      return (Document)paramNode;
    } 
    return null;
  }
  
  public static Element nodeAsElement(Node paramNode) {
    if (paramNode.getNodeTypeEnum() == NodeType.ELEMENT_NODE) {
      assert paramNode instanceof Element;
      return (Element)paramNode;
    } 
    return null;
  }
  
  public static Namespace nodeAsNamespace(Node paramNode) {
    if (paramNode.getNodeTypeEnum() == NodeType.NAMESPACE_NODE) {
      assert paramNode instanceof Namespace;
      return (Namespace)paramNode;
    } 
    return null;
  }
  
  public static ProcessingInstruction nodeAsProcessingInstruction(Node paramNode) {
    if (paramNode.getNodeTypeEnum() == NodeType.PROCESSING_INSTRUCTION_NODE) {
      assert paramNode instanceof ProcessingInstruction;
      return (ProcessingInstruction)paramNode;
    } 
    return null;
  }
  
  static {
    boolean bool;
    if (!NodeHelper.class.desiredAssertionStatus()) {
      bool = true;
    } else {
      bool = false;
    } 
    $assertionsDisabled = bool;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\NodeHelper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */