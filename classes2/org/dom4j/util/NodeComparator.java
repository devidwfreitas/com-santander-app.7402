package org.dom4j.util;

import java.util.Comparator;
import org.dom4j.Attribute;
import org.dom4j.Branch;
import org.dom4j.CharacterData;
import org.dom4j.Document;
import org.dom4j.DocumentType;
import org.dom4j.Element;
import org.dom4j.Entity;
import org.dom4j.Namespace;
import org.dom4j.Node;
import org.dom4j.NodeType;
import org.dom4j.ProcessingInstruction;
import org.dom4j.QName;

public class NodeComparator implements Comparator<Node> {
  public int compare(String paramString1, String paramString2) {
    return (paramString1 == paramString2) ? 0 : ((paramString1 == null) ? -1 : ((paramString2 == null) ? 1 : paramString1.compareTo(paramString2)));
  }
  
  public int compare(Attribute paramAttribute1, Attribute paramAttribute2) {
    int j = compare(paramAttribute1.getQName(), paramAttribute2.getQName());
    int i = j;
    if (j == 0)
      i = compare(paramAttribute1.getValue(), paramAttribute2.getValue()); 
    return i;
  }
  
  public int compare(CharacterData paramCharacterData1, CharacterData paramCharacterData2) {
    return compare(paramCharacterData1.getText(), paramCharacterData2.getText());
  }
  
  public int compare(Document paramDocument1, Document paramDocument2) {
    int j = compare(paramDocument1.getDocType(), paramDocument2.getDocType());
    int i = j;
    if (j == 0)
      i = compareContent((Branch)paramDocument1, (Branch)paramDocument2); 
    return i;
  }
  
  public int compare(DocumentType paramDocumentType1, DocumentType paramDocumentType2) {
    if (paramDocumentType1 == paramDocumentType2)
      return 0; 
    if (paramDocumentType1 == null)
      return -1; 
    if (paramDocumentType2 == null)
      return 1; 
    int j = compare(paramDocumentType1.getPublicID(), paramDocumentType2.getPublicID());
    int i = j;
    if (j == 0) {
      j = compare(paramDocumentType1.getSystemID(), paramDocumentType2.getSystemID());
      i = j;
      if (j == 0)
        return compare(paramDocumentType1.getName(), paramDocumentType2.getName()); 
    } 
    return i;
  }
  
  public int compare(Element paramElement1, Element paramElement2) {
    int j = compare(paramElement1.getQName(), paramElement2.getQName());
    int i = j;
    if (j == 0) {
      int k = paramElement1.attributeCount();
      j = k - paramElement2.attributeCount();
      i = j;
      if (j == 0) {
        for (i = 0; i < k; i++) {
          Attribute attribute = paramElement1.attribute(i);
          j = compare(attribute, paramElement2.attribute(attribute.getQName()));
          if (j != 0)
            return j; 
        } 
      } else {
        return i;
      } 
    } else {
      return i;
    } 
    return compareContent((Branch)paramElement1, (Branch)paramElement2);
  }
  
  public int compare(Entity paramEntity1, Entity paramEntity2) {
    int j = compare(paramEntity1.getName(), paramEntity2.getName());
    int i = j;
    if (j == 0)
      i = compare(paramEntity1.getText(), paramEntity2.getText()); 
    return i;
  }
  
  public int compare(Namespace paramNamespace1, Namespace paramNamespace2) {
    int j = compare(paramNamespace1.getURI(), paramNamespace2.getURI());
    int i = j;
    if (j == 0)
      i = compare(paramNamespace1.getPrefix(), paramNamespace2.getPrefix()); 
    return i;
  }
  
  public int compare(Node paramNode1, Node paramNode2) {
    NodeType nodeType1 = paramNode1.getNodeTypeEnum();
    NodeType nodeType2 = paramNode2.getNodeTypeEnum();
    if (nodeType1 != nodeType2)
      return nodeType1.getCode() - nodeType2.getCode(); 
    switch (NodeComparator$1.$SwitchMap$org$dom4j$NodeType[nodeType1.ordinal()]) {
      default:
        throw new RuntimeException("Invalid node types. node1: " + paramNode1 + " and node2: " + paramNode2);
      case 1:
        return compare((Element)paramNode1, (Element)paramNode2);
      case 2:
        return compare((Document)paramNode1, (Document)paramNode2);
      case 3:
        return compare((Attribute)paramNode1, (Attribute)paramNode2);
      case 4:
        return compare((CharacterData)paramNode1, (CharacterData)paramNode2);
      case 5:
        return compare((CharacterData)paramNode1, (CharacterData)paramNode2);
      case 6:
        return compare((Entity)paramNode1, (Entity)paramNode2);
      case 7:
        return compare((ProcessingInstruction)paramNode1, (ProcessingInstruction)paramNode2);
      case 8:
        return compare((CharacterData)paramNode1, (CharacterData)paramNode2);
      case 9:
        return compare((DocumentType)paramNode1, (DocumentType)paramNode2);
      case 10:
        break;
    } 
    return compare((Namespace)paramNode1, (Namespace)paramNode2);
  }
  
  public int compare(ProcessingInstruction paramProcessingInstruction1, ProcessingInstruction paramProcessingInstruction2) {
    int j = compare(paramProcessingInstruction1.getTarget(), paramProcessingInstruction2.getTarget());
    int i = j;
    if (j == 0)
      i = compare(paramProcessingInstruction1.getText(), paramProcessingInstruction2.getText()); 
    return i;
  }
  
  public int compare(QName paramQName1, QName paramQName2) {
    int j = compare(paramQName1.getNamespaceURI(), paramQName2.getNamespaceURI());
    int i = j;
    if (j == 0)
      i = compare(paramQName1.getQualifiedName(), paramQName2.getQualifiedName()); 
    return i;
  }
  
  public int compareContent(Branch paramBranch1, Branch paramBranch2) {
    int k = paramBranch1.nodeCount();
    int j = k - paramBranch2.nodeCount();
    int i = j;
    if (j == 0) {
      int m = 0;
      i = j;
      while (true) {
        if (m < k) {
          i = compare(paramBranch1.node(m), paramBranch2.node(m));
          if (i == 0) {
            m++;
            continue;
          } 
        } 
        return i;
      } 
    } 
    return i;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4\\util\NodeComparator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */