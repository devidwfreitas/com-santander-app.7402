package org.dom4j.tree;

import java.util.Iterator;
import java.util.List;
import java.util.StringTokenizer;
import org.dom4j.Branch;
import org.dom4j.Comment;
import org.dom4j.Element;
import org.dom4j.IllegalAddException;
import org.dom4j.Namespace;
import org.dom4j.Node;
import org.dom4j.ProcessingInstruction;
import org.dom4j.QName;

public abstract class AbstractBranch extends AbstractNode implements Branch {
  protected static final int DEFAULT_CONTENT_LIST_SIZE = 5;
  
  public void add(Comment paramComment) {
    addNode((Node)paramComment);
  }
  
  public void add(Element paramElement) {
    addNode((Node)paramElement);
  }
  
  public void add(Node paramNode) {
    switch (AbstractBranch$1.$SwitchMap$org$dom4j$NodeType[paramNode.getNodeTypeEnum().ordinal()]) {
      default:
        invalidNodeTypeAddException(paramNode);
        return;
      case 4:
        add((Element)paramNode);
        return;
      case 5:
        add((Comment)paramNode);
        return;
      case 6:
        break;
    } 
    add((ProcessingInstruction)paramNode);
  }
  
  public void add(ProcessingInstruction paramProcessingInstruction) {
    addNode((Node)paramProcessingInstruction);
  }
  
  public Element addElement(String paramString) {
    Element element = getDocumentFactory().createElement(paramString);
    add(element);
    return element;
  }
  
  public Element addElement(String paramString1, String paramString2) {
    Element element = getDocumentFactory().createElement(paramString1, paramString2);
    add(element);
    return element;
  }
  
  public Element addElement(String paramString1, String paramString2, String paramString3) {
    Namespace namespace = Namespace.get(paramString2, paramString3);
    return addElement(getDocumentFactory().createQName(paramString1, namespace));
  }
  
  public Element addElement(QName paramQName) {
    Element element = getDocumentFactory().createElement(paramQName);
    add(element);
    return element;
  }
  
  protected abstract void addNode(int paramInt, Node paramNode);
  
  public abstract void addNode(Node paramNode);
  
  public void appendContent(Branch paramBranch) {
    Iterator<Node> iterator = paramBranch.iterator();
    while (iterator.hasNext())
      add((Node)((Node)iterator.next()).clone()); 
  }
  
  public abstract void childAdded(Node paramNode);
  
  public abstract void childRemoved(Node paramNode);
  
  public List<Node> content() {
    return new ContentListFacade<Node>(this, contentList());
  }
  
  protected abstract List<Node> contentList();
  
  protected void contentRemoved() {
    Iterator<Node> iterator = contentList().iterator();
    while (iterator.hasNext())
      childRemoved(iterator.next()); 
  }
  
  public List<Node> createContentList() {
    return new LazyList<Node>();
  }
  
  public <T extends Node> BackedList<T> createResultList() {
    return new BackedList<T>(this, contentList());
  }
  
  public Element elementByID(String paramString) {
    int j = nodeCount();
    for (int i = 0; i < j; i++) {
      Node node = node(i);
      if (node instanceof Element) {
        Element element = (Element)node;
        String str = elementID(element);
        if (str == null || !str.equals(paramString)) {
          Element element1 = element.elementByID(paramString);
          element = element1;
          if (element1 == null)
            continue; 
        } 
        return element;
      } 
      continue;
    } 
    return null;
  }
  
  protected String elementID(Element paramElement) {
    return paramElement.attributeValue("ID");
  }
  
  protected String getContentAsStringValue(Node paramNode) {
    switch (AbstractBranch$1.$SwitchMap$org$dom4j$NodeType[paramNode.getNodeTypeEnum().ordinal()]) {
      default:
        return "";
      case 1:
      case 2:
      case 3:
      case 4:
        break;
    } 
    return paramNode.getStringValue();
  }
  
  protected String getContentAsText(Node paramNode) {
    switch (AbstractBranch$1.$SwitchMap$org$dom4j$NodeType[paramNode.getNodeTypeEnum().ordinal()]) {
      default:
        return "";
      case 1:
      case 2:
      case 3:
        break;
    } 
    return paramNode.getText();
  }
  
  public String getText() {
    int i = 1;
    List<Node> list = contentList();
    if (list != null) {
      int j = list.size();
      if (j >= 1) {
        String str = getContentAsText(list.get(0));
        if (j == 1)
          return str; 
        StringBuilder stringBuilder = new StringBuilder(str);
        while (i < j) {
          stringBuilder.append(getContentAsText(list.get(i)));
          i++;
        } 
        return stringBuilder.toString();
      } 
    } 
    return "";
  }
  
  public String getTextTrim() {
    String str = getText();
    StringBuilder stringBuilder = new StringBuilder();
    StringTokenizer stringTokenizer = new StringTokenizer(str);
    while (stringTokenizer.hasMoreTokens()) {
      stringBuilder.append(stringTokenizer.nextToken());
      if (stringTokenizer.hasMoreTokens())
        stringBuilder.append(" "); 
    } 
    return stringBuilder.toString();
  }
  
  public boolean hasContent() {
    return (nodeCount() > 0);
  }
  
  public int indexOf(Node paramNode) {
    return contentList().indexOf(paramNode);
  }
  
  protected void invalidNodeTypeAddException(Node paramNode) {
    throw new IllegalAddException("Invalid node type. Cannot add node: " + paramNode + " to this branch: " + this);
  }
  
  public boolean isReadOnly() {
    return false;
  }
  
  public Iterator<Node> iterator() {
    return nodeIterator();
  }
  
  public Node node(int paramInt) {
    return contentList().get(paramInt);
  }
  
  public int nodeCount() {
    return contentList().size();
  }
  
  public Iterator<Node> nodeIterator() {
    return contentList().iterator();
  }
  
  public boolean remove(Comment paramComment) {
    return removeNode((Node)paramComment);
  }
  
  public boolean remove(Element paramElement) {
    return removeNode((Node)paramElement);
  }
  
  public boolean remove(Node paramNode) {
    switch (AbstractBranch$1.$SwitchMap$org$dom4j$NodeType[paramNode.getNodeTypeEnum().ordinal()]) {
      default:
        invalidNodeTypeAddException(paramNode);
        return false;
      case 4:
        return remove((Element)paramNode);
      case 5:
        return remove((Comment)paramNode);
      case 6:
        break;
    } 
    return remove((ProcessingInstruction)paramNode);
  }
  
  public boolean remove(ProcessingInstruction paramProcessingInstruction) {
    return removeNode((Node)paramProcessingInstruction);
  }
  
  public abstract boolean removeNode(Node paramNode);
  
  public void setProcessingInstructions(List<ProcessingInstruction> paramList) {
    Iterator<ProcessingInstruction> iterator = paramList.iterator();
    while (iterator.hasNext())
      addNode((Node)iterator.next()); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\tree\AbstractBranch.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */