package org.jaxen;

import java.util.Iterator;
import org.jaxen.util.AncestorAxisIterator;
import org.jaxen.util.AncestorOrSelfAxisIterator;
import org.jaxen.util.DescendantAxisIterator;
import org.jaxen.util.DescendantOrSelfAxisIterator;
import org.jaxen.util.FollowingAxisIterator;
import org.jaxen.util.FollowingSiblingAxisIterator;
import org.jaxen.util.PrecedingAxisIterator;
import org.jaxen.util.PrecedingSiblingAxisIterator;
import org.jaxen.util.SelfAxisIterator;

public abstract class DefaultNavigator implements Navigator {
  public Iterator getAncestorAxisIterator(Object paramObject) {
    return (Iterator)new AncestorAxisIterator(paramObject, this);
  }
  
  public Iterator getAncestorOrSelfAxisIterator(Object paramObject) {
    return (Iterator)new AncestorOrSelfAxisIterator(paramObject, this);
  }
  
  public Iterator getAttributeAxisIterator(Object paramObject) {
    throw new UnsupportedAxisException("attribute");
  }
  
  public Iterator getChildAxisIterator(Object paramObject) {
    throw new UnsupportedAxisException("child");
  }
  
  public Iterator getDescendantAxisIterator(Object paramObject) {
    return (Iterator)new DescendantAxisIterator(paramObject, this);
  }
  
  public Iterator getDescendantOrSelfAxisIterator(Object paramObject) {
    return (Iterator)new DescendantOrSelfAxisIterator(paramObject, this);
  }
  
  public Object getDocument(String paramString) {
    return null;
  }
  
  public Object getDocumentNode(Object paramObject) {
    return null;
  }
  
  public Object getElementById(Object paramObject, String paramString) {
    return null;
  }
  
  public Iterator getFollowingAxisIterator(Object paramObject) {
    return (Iterator)new FollowingAxisIterator(paramObject, this);
  }
  
  public Iterator getFollowingSiblingAxisIterator(Object paramObject) {
    return (Iterator)new FollowingSiblingAxisIterator(paramObject, this);
  }
  
  public Iterator getNamespaceAxisIterator(Object paramObject) {
    throw new UnsupportedAxisException("namespace");
  }
  
  public short getNodeType(Object paramObject) {
    return isElement(paramObject) ? 1 : (isAttribute(paramObject) ? 2 : (isText(paramObject) ? 3 : (isComment(paramObject) ? 8 : (isDocument(paramObject) ? 9 : (isProcessingInstruction(paramObject) ? 7 : (isNamespace(paramObject) ? 13 : 14))))));
  }
  
  public Iterator getParentAxisIterator(Object paramObject) {
    throw new UnsupportedAxisException("parent");
  }
  
  public Object getParentNode(Object paramObject) {
    paramObject = getParentAxisIterator(paramObject);
    return (paramObject != null && paramObject.hasNext()) ? paramObject.next() : null;
  }
  
  public Iterator getPrecedingAxisIterator(Object paramObject) {
    return (Iterator)new PrecedingAxisIterator(paramObject, this);
  }
  
  public Iterator getPrecedingSiblingAxisIterator(Object paramObject) {
    return (Iterator)new PrecedingSiblingAxisIterator(paramObject, this);
  }
  
  public String getProcessingInstructionData(Object paramObject) {
    return null;
  }
  
  public String getProcessingInstructionTarget(Object paramObject) {
    return null;
  }
  
  public Iterator getSelfAxisIterator(Object paramObject) {
    return (Iterator)new SelfAxisIterator(paramObject);
  }
  
  public String translateNamespacePrefixToUri(String paramString, Object paramObject) {
    return null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\DefaultNavigator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */