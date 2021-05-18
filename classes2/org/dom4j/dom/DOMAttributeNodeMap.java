package org.dom4j.dom;

import org.dom4j.Node;
import org.w3c.dom.Attr;
import org.w3c.dom.DOMException;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;

public class DOMAttributeNodeMap implements NamedNodeMap {
  private DOMElement element;
  
  public DOMAttributeNodeMap(DOMElement paramDOMElement) {
    this.element = paramDOMElement;
  }
  
  public void foo() {
    DOMNodeHelper.notSupported();
  }
  
  public int getLength() {
    return this.element.attributeCount();
  }
  
  public Node getNamedItem(String paramString) {
    return this.element.getAttributeNode(paramString);
  }
  
  public Node getNamedItemNS(String paramString1, String paramString2) {
    return this.element.getAttributeNodeNS(paramString1, paramString2);
  }
  
  public Node item(int paramInt) {
    return DOMNodeHelper.asDOMAttr((Node)this.element.attribute(paramInt));
  }
  
  public Node removeNamedItem(String paramString) {
    Attr attr = this.element.getAttributeNode(paramString);
    if (attr == null)
      throw new DOMException((short)8, "No attribute named " + paramString); 
    return this.element.removeAttributeNode(attr);
  }
  
  public Node removeNamedItemNS(String paramString1, String paramString2) {
    Attr attr2 = this.element.getAttributeNodeNS(paramString1, paramString2);
    Attr attr1 = attr2;
    if (attr2 != null)
      attr1 = this.element.removeAttributeNode(attr2); 
    return attr1;
  }
  
  public Node setNamedItem(Node paramNode) {
    if (paramNode instanceof Attr)
      return this.element.setAttributeNode((Attr)paramNode); 
    throw new DOMException((short)9, "Node is not an Attr: " + paramNode);
  }
  
  public Node setNamedItemNS(Node paramNode) {
    if (paramNode instanceof Attr)
      return this.element.setAttributeNodeNS((Attr)paramNode); 
    throw new DOMException((short)9, "Node is not an Attr: " + paramNode);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\dom\DOMAttributeNodeMap.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */