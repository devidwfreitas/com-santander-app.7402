package org.dom4j.util;

import java.util.Iterator;
import java.util.List;
import org.dom4j.Attribute;
import org.dom4j.Element;
import org.dom4j.Node;
import org.dom4j.NodeHelper;
import org.dom4j.QName;
import org.dom4j.tree.BackedList;
import org.dom4j.tree.DefaultElement;
import org.dom4j.tree.LazyList;

public class IndexedElement extends DefaultElement {
  private DoubleNameMap<Attribute> attributeIndex;
  
  private DoubleNameMap<List<Element>> elementIndex;
  
  public IndexedElement(String paramString) {
    super(paramString);
  }
  
  public IndexedElement(QName paramQName) {
    super(paramQName);
  }
  
  public IndexedElement(QName paramQName, int paramInt) {
    super(paramQName, paramInt);
  }
  
  protected static Element firstElement(List<Element> paramList) {
    return paramList.isEmpty() ? null : paramList.get(0);
  }
  
  protected void addNode(Node paramNode) {
    super.addNode(paramNode);
    switch (IndexedElement$1.$SwitchMap$org$dom4j$NodeType[paramNode.getNodeTypeEnum().ordinal()]) {
      default:
        return;
      case 1:
        if (this.elementIndex != null) {
          addToElementIndex((Element)paramNode);
          return;
        } 
      case 2:
        break;
    } 
    if (this.attributeIndex != null) {
      addToAttributeIndex((Attribute)paramNode);
      return;
    } 
  }
  
  protected void addToAttributeIndex(Attribute paramAttribute) {
    QName qName = paramAttribute.getQName();
    this.attributeIndex.put(qName, paramAttribute);
  }
  
  protected void addToElementIndex(Element paramElement) {
    LazyList<Element> lazyList;
    QName qName = paramElement.getQName();
    List list2 = this.elementIndex.get(qName);
    List list1 = list2;
    if (list2 == null) {
      lazyList = new LazyList();
      this.elementIndex.put(qName, lazyList);
    } 
    lazyList.add(paramElement);
  }
  
  protected List<Element> asElementList(List<Element> paramList) {
    BackedList backedList = createResultList();
    Iterator<Element> iterator = paramList.iterator();
    while (iterator.hasNext())
      backedList.addLocal((Node)iterator.next()); 
    return (List<Element>)backedList;
  }
  
  public Attribute attribute(String paramString) {
    return attributeIndex().get(paramString);
  }
  
  public Attribute attribute(QName paramQName) {
    return attributeIndex().get(paramQName);
  }
  
  protected DoubleNameMap<Attribute> attributeIndex() {
    if (this.attributeIndex == null) {
      this.attributeIndex = new DoubleNameMap<Attribute>();
      Iterator<Attribute> iterator = attributeList().iterator();
      while (iterator.hasNext())
        addToAttributeIndex(iterator.next()); 
    } 
    return this.attributeIndex;
  }
  
  public Element element(String paramString) {
    return firstElement(elementIndex().get(paramString));
  }
  
  public Element element(QName paramQName) {
    return firstElement(elementIndex().get(paramQName));
  }
  
  protected DoubleNameMap<List<Element>> elementIndex() {
    if (this.elementIndex == null) {
      this.elementIndex = new DoubleNameMap<List<Element>>();
      Iterator<Node> iterator = contentList().iterator();
      while (iterator.hasNext()) {
        Element element = NodeHelper.nodeAsElement(iterator.next());
        if (element != null)
          addToElementIndex(element); 
      } 
    } 
    return this.elementIndex;
  }
  
  public List<Element> elements(String paramString) {
    return asElementList(elementIndex().get(paramString));
  }
  
  public List<Element> elements(QName paramQName) {
    return asElementList(elementIndex().get(paramQName));
  }
  
  protected void removeFromAttributeIndex(Attribute paramAttribute) {
    QName qName = paramAttribute.getQName();
    this.attributeIndex.remove(qName);
  }
  
  protected void removeFromElementIndex(Element paramElement) {
    QName qName = paramElement.getQName();
    List list = this.elementIndex.get(qName);
    if (list != null) {
      list.remove(paramElement);
      if (list.isEmpty())
        this.elementIndex.remove(qName); 
    } 
  }
  
  protected boolean removeNode(Node paramNode) {
    if (super.removeNode(paramNode)) {
      switch (IndexedElement$1.$SwitchMap$org$dom4j$NodeType[paramNode.getNodeTypeEnum().ordinal()]) {
        default:
          return true;
        case 1:
          if (this.elementIndex != null)
            removeFromElementIndex((Element)paramNode); 
        case 2:
          break;
      } 
      if (this.attributeIndex != null)
        removeFromAttributeIndex((Attribute)paramNode); 
    } 
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4\\util\IndexedElement.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */