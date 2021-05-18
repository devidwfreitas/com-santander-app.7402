package org.jaxen;

import java.io.Serializable;
import java.util.Iterator;

public interface Navigator extends Serializable {
  Iterator getAncestorAxisIterator(Object paramObject);
  
  Iterator getAncestorOrSelfAxisIterator(Object paramObject);
  
  Iterator getAttributeAxisIterator(Object paramObject);
  
  String getAttributeName(Object paramObject);
  
  String getAttributeNamespaceUri(Object paramObject);
  
  String getAttributeQName(Object paramObject);
  
  String getAttributeStringValue(Object paramObject);
  
  Iterator getChildAxisIterator(Object paramObject);
  
  String getCommentStringValue(Object paramObject);
  
  Iterator getDescendantAxisIterator(Object paramObject);
  
  Iterator getDescendantOrSelfAxisIterator(Object paramObject);
  
  Object getDocument(String paramString);
  
  Object getDocumentNode(Object paramObject);
  
  Object getElementById(Object paramObject, String paramString);
  
  String getElementName(Object paramObject);
  
  String getElementNamespaceUri(Object paramObject);
  
  String getElementQName(Object paramObject);
  
  String getElementStringValue(Object paramObject);
  
  Iterator getFollowingAxisIterator(Object paramObject);
  
  Iterator getFollowingSiblingAxisIterator(Object paramObject);
  
  Iterator getNamespaceAxisIterator(Object paramObject);
  
  String getNamespacePrefix(Object paramObject);
  
  String getNamespaceStringValue(Object paramObject);
  
  short getNodeType(Object paramObject);
  
  Iterator getParentAxisIterator(Object paramObject);
  
  Object getParentNode(Object paramObject);
  
  Iterator getPrecedingAxisIterator(Object paramObject);
  
  Iterator getPrecedingSiblingAxisIterator(Object paramObject);
  
  String getProcessingInstructionData(Object paramObject);
  
  String getProcessingInstructionTarget(Object paramObject);
  
  Iterator getSelfAxisIterator(Object paramObject);
  
  String getTextStringValue(Object paramObject);
  
  boolean isAttribute(Object paramObject);
  
  boolean isComment(Object paramObject);
  
  boolean isDocument(Object paramObject);
  
  boolean isElement(Object paramObject);
  
  boolean isNamespace(Object paramObject);
  
  boolean isProcessingInstruction(Object paramObject);
  
  boolean isText(Object paramObject);
  
  XPath parseXPath(String paramString);
  
  String translateNamespacePrefixToUri(String paramString, Object paramObject);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\Navigator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */