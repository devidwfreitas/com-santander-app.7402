package org.dom4j;

public enum NodeType {
  ANY_NODE((short)0, "Node"),
  ATTRIBUTE_NODE((short)0, "Node"),
  CDATA_SECTION_NODE((short)0, "Node"),
  COMMENT_NODE((short)0, "Node"),
  DOCUMENT_FRAGMENT_NODE((short)0, "Node"),
  DOCUMENT_NODE((short)0, "Node"),
  DOCUMENT_TYPE_NODE((short)0, "Node"),
  ELEMENT_NODE((short)1, "Element"),
  ENTITY_NODE((short)1, "Element"),
  ENTITY_REFERENCE_NODE((short)1, "Element"),
  NAMESPACE_NODE((short)1, "Element"),
  NOTATION_NODE((short)1, "Element"),
  PROCESSING_INSTRUCTION_NODE((short)1, "Element"),
  TEXT_NODE((short)1, "Element"),
  UNKNOWN_NODE((short)1, "Element");
  
  private static final NodeType[] byCode;
  
  private final short code;
  
  private final String name;
  
  static {
    ATTRIBUTE_NODE = new NodeType("ATTRIBUTE_NODE", 2, (short)2, "Attribute");
    TEXT_NODE = new NodeType("TEXT_NODE", 3, (short)3, "Text");
    CDATA_SECTION_NODE = new NodeType("CDATA_SECTION_NODE", 4, (short)4, "CDATA");
    ENTITY_REFERENCE_NODE = new NodeType("ENTITY_REFERENCE_NODE", 5, (short)5, "Entity");
    ENTITY_NODE = new NodeType("ENTITY_NODE", 6, (short)6, "Entity");
    PROCESSING_INSTRUCTION_NODE = new NodeType("PROCESSING_INSTRUCTION_NODE", 7, (short)7, "ProcessingInstruction");
    COMMENT_NODE = new NodeType("COMMENT_NODE", 8, (short)8, "Comment");
    DOCUMENT_NODE = new NodeType("DOCUMENT_NODE", 9, (short)9, "Document");
    DOCUMENT_TYPE_NODE = new NodeType("DOCUMENT_TYPE_NODE", 10, (short)10, "DocumentType");
    DOCUMENT_FRAGMENT_NODE = new NodeType("DOCUMENT_FRAGMENT_NODE", 11, (short)11, "DocumentFragment");
    NOTATION_NODE = new NodeType("NOTATION_NODE", 12, (short)12, "Notation");
    NAMESPACE_NODE = new NodeType("NAMESPACE_NODE", 13, (short)13, "Namespace");
    UNKNOWN_NODE = new NodeType("UNKNOWN_NODE", 14, (short)14, "Unknown");
    $VALUES = new NodeType[] { 
        ANY_NODE, ELEMENT_NODE, ATTRIBUTE_NODE, TEXT_NODE, CDATA_SECTION_NODE, ENTITY_REFERENCE_NODE, ENTITY_NODE, PROCESSING_INSTRUCTION_NODE, COMMENT_NODE, DOCUMENT_NODE, 
        DOCUMENT_TYPE_NODE, DOCUMENT_FRAGMENT_NODE, NOTATION_NODE, NAMESPACE_NODE, UNKNOWN_NODE };
    byCode = new NodeType[(values()).length];
    NodeType[] arrayOfNodeType = values();
    int j = arrayOfNodeType.length;
    while (i < j) {
      NodeType nodeType = arrayOfNodeType[i];
      byCode[nodeType.code] = nodeType;
      i++;
    } 
  }
  
  NodeType(short paramShort, String paramString1) {
    this.code = paramShort;
    this.name = paramString1;
  }
  
  public static NodeType byCode(short paramShort) {
    if (paramShort < 0 || paramShort >= byCode.length)
      return null; 
    NodeType nodeType2 = byCode[paramShort];
    NodeType nodeType1 = nodeType2;
    assert false;
    return nodeType1;
  }
  
  public short getCode() {
    return this.code;
  }
  
  public String getName() {
    return this.name;
  }
  
  static {
    boolean bool;
    int i = 0;
    if (!NodeType.class.desiredAssertionStatus()) {
      bool = true;
    } else {
      bool = false;
    } 
    $assertionsDisabled = bool;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\NodeType.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */