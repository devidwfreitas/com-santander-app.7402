package org.dom4j.tree;

import java.util.Iterator;
import java.util.List;
import org.dom4j.Attribute;
import org.dom4j.Branch;
import org.dom4j.Document;
import org.dom4j.DocumentFactory;
import org.dom4j.Element;
import org.dom4j.IllegalAddException;
import org.dom4j.Namespace;
import org.dom4j.Node;
import org.dom4j.NodeHelper;
import org.dom4j.ProcessingInstruction;
import org.dom4j.QName;

public class DefaultElement extends AbstractElement {
  private static final transient DocumentFactory DOCUMENT_FACTORY = DocumentFactory.getInstance();
  
  private final List<Attribute> attributes;
  
  private List<Node> content = (List<Node>)new LazyList();
  
  private Branch parentBranch;
  
  private QName qname;
  
  public DefaultElement(String paramString) {
    this(DOCUMENT_FACTORY.createQName(paramString));
  }
  
  public DefaultElement(String paramString, Namespace paramNamespace) {
    this(DOCUMENT_FACTORY.createQName(paramString, paramNamespace));
  }
  
  public DefaultElement(QName paramQName) {
    this(paramQName, 0);
  }
  
  public DefaultElement(QName paramQName, int paramInt) {
    this.qname = paramQName;
    this.attributes = (List<Attribute>)new LazyList();
  }
  
  public void add(Attribute paramAttribute) {
    if (paramAttribute.getParent() != null)
      throw new IllegalAddException(this, paramAttribute, "The Attribute already has an existing parent \"" + paramAttribute.getParent().getQualifiedName() + "\""); 
    if (paramAttribute.getValue() == null) {
      paramAttribute = attribute(paramAttribute.getQName());
      if (paramAttribute != null)
        remove(paramAttribute); 
      return;
    } 
    attributeList().add(paramAttribute);
    childAdded((Node)paramAttribute);
  }
  
  protected void addNewNode(Node paramNode) {
    contentList().add(paramNode);
    childAdded(paramNode);
  }
  
  public List<Namespace> additionalNamespaces() {
    BackedList backedList = createResultList();
    Iterator<Node> iterator = contentList().iterator();
    while (iterator.hasNext()) {
      Namespace namespace = NodeHelper.nodeAsNamespace(iterator.next());
      if (namespace != null && !namespace.equals(getNamespace()))
        backedList.addLocal((Node)namespace); 
    } 
    return (List<Namespace>)backedList;
  }
  
  public List<Namespace> additionalNamespaces(String paramString) {
    BackedList backedList = createResultList();
    Iterator<Node> iterator = contentList().iterator();
    while (iterator.hasNext()) {
      Namespace namespace = NodeHelper.nodeAsNamespace(iterator.next());
      if (namespace != null && !paramString.equals(namespace.getURI()))
        backedList.addLocal((Node)namespace); 
    } 
    return (List<Namespace>)backedList;
  }
  
  public Attribute attribute(int paramInt) {
    return (paramInt < 0 || paramInt >= attributeList().size()) ? null : attributeList().get(paramInt);
  }
  
  public Attribute attribute(String paramString) {
    for (Attribute attribute : attributeList()) {
      if (paramString.equals(attribute.getName()))
        return attribute; 
    } 
    return null;
  }
  
  public Attribute attribute(String paramString, Namespace paramNamespace) {
    return attribute(getDocumentFactory().createQName(paramString, paramNamespace));
  }
  
  public Attribute attribute(QName paramQName) {
    for (Attribute attribute : attributeList()) {
      if (paramQName.equals(attribute.getQName()))
        return attribute; 
    } 
    return null;
  }
  
  public int attributeCount() {
    return attributeList().size();
  }
  
  public Iterator<Attribute> attributeIterator() {
    return attributeList().iterator();
  }
  
  public List<Attribute> attributeList() {
    assert this.attributes != null;
    return this.attributes;
  }
  
  @Deprecated
  protected List<Attribute> attributeList(int paramInt) {
    assert this.attributes != null;
    return this.attributes;
  }
  
  public List<Attribute> attributes() {
    return (List<Attribute>)new ContentListFacade(this, attributeList());
  }
  
  public void clearContent() {
    assert this.content != null;
    contentRemoved();
    this.content.clear();
  }
  
  public DefaultElement clone() {
    DefaultElement defaultElement = (DefaultElement)super.clone();
    if (defaultElement != this) {
      CloneHelper.setFinalLazyList(DefaultElement.class, defaultElement, "attributes");
      CloneHelper.setFinalContent(DefaultElement.class, defaultElement);
      defaultElement.appendAttributes(this);
      defaultElement.appendContent((Branch)this);
    } 
    return defaultElement;
  }
  
  public List<Node> contentList() {
    assert this.content != null;
    return this.content;
  }
  
  public List<Namespace> declaredNamespaces() {
    BackedList backedList = createResultList();
    if (this.content != null) {
      Iterator<Node> iterator = this.content.iterator();
      while (iterator.hasNext()) {
        Namespace namespace = NodeHelper.nodeAsNamespace(iterator.next());
        if (namespace != null)
          backedList.addLocal((Node)namespace); 
      } 
    } 
    return (List<Namespace>)backedList;
  }
  
  public Element element(String paramString) {
    Iterator<Node> iterator = contentList().iterator();
    while (iterator.hasNext()) {
      Element element = NodeHelper.nodeAsElement(iterator.next());
      if (element != null && paramString.equals(element.getName()))
        return element; 
    } 
    return null;
  }
  
  public Element element(String paramString, Namespace paramNamespace) {
    return element(getDocumentFactory().createQName(paramString, paramNamespace));
  }
  
  public Element element(QName paramQName) {
    Iterator<Node> iterator = contentList().iterator();
    while (iterator.hasNext()) {
      Element element = NodeHelper.nodeAsElement(iterator.next());
      if (element != null && paramQName.equals(element.getQName()))
        return element; 
    } 
    return null;
  }
  
  public Document getDocument() {
    return (this.parentBranch instanceof Document) ? (Document)this.parentBranch : ((this.parentBranch instanceof Element) ? ((Element)this.parentBranch).getDocument() : null);
  }
  
  public DocumentFactory getDocumentFactory() {
    DocumentFactory documentFactory = this.qname.getDocumentFactory();
    return (documentFactory != null) ? documentFactory : DOCUMENT_FACTORY;
  }
  
  public Namespace getNamespaceForPrefix(String paramString) {
    // Byte code:
    //   0: aload_1
    //   1: astore_2
    //   2: aload_1
    //   3: ifnonnull -> 10
    //   6: ldc_w ''
    //   9: astore_2
    //   10: aload_2
    //   11: aload_0
    //   12: invokevirtual getNamespacePrefix : ()Ljava/lang/String;
    //   15: invokevirtual equals : (Ljava/lang/Object;)Z
    //   18: ifeq -> 28
    //   21: aload_0
    //   22: invokevirtual getNamespace : ()Lorg/dom4j/Namespace;
    //   25: astore_1
    //   26: aload_1
    //   27: areturn
    //   28: aload_2
    //   29: ldc_w 'xml'
    //   32: invokevirtual equals : (Ljava/lang/Object;)Z
    //   35: ifeq -> 42
    //   38: getstatic org/dom4j/Namespace.XML_NAMESPACE : Lorg/dom4j/Namespace;
    //   41: areturn
    //   42: aload_0
    //   43: invokevirtual contentList : ()Ljava/util/List;
    //   46: invokeinterface iterator : ()Ljava/util/Iterator;
    //   51: astore_1
    //   52: aload_1
    //   53: invokeinterface hasNext : ()Z
    //   58: ifeq -> 91
    //   61: aload_1
    //   62: invokeinterface next : ()Ljava/lang/Object;
    //   67: checkcast org/dom4j/Node
    //   70: invokestatic nodeAsNamespace : (Lorg/dom4j/Node;)Lorg/dom4j/Namespace;
    //   73: astore_3
    //   74: aload_3
    //   75: ifnull -> 52
    //   78: aload_2
    //   79: aload_3
    //   80: invokevirtual getPrefix : ()Ljava/lang/String;
    //   83: invokevirtual equals : (Ljava/lang/Object;)Z
    //   86: ifeq -> 52
    //   89: aload_3
    //   90: areturn
    //   91: aload_0
    //   92: invokevirtual getParent : ()Lorg/dom4j/Element;
    //   95: astore_1
    //   96: aload_1
    //   97: ifnull -> 114
    //   100: aload_1
    //   101: aload_2
    //   102: invokeinterface getNamespaceForPrefix : (Ljava/lang/String;)Lorg/dom4j/Namespace;
    //   107: astore_3
    //   108: aload_3
    //   109: astore_1
    //   110: aload_3
    //   111: ifnonnull -> 26
    //   114: aload_2
    //   115: ifnull -> 125
    //   118: aload_2
    //   119: invokevirtual length : ()I
    //   122: ifgt -> 129
    //   125: getstatic org/dom4j/Namespace.NO_NAMESPACE : Lorg/dom4j/Namespace;
    //   128: areturn
    //   129: aconst_null
    //   130: areturn
  }
  
  public Namespace getNamespaceForURI(String paramString) {
    if (paramString == null || paramString.length() <= 0)
      return Namespace.NO_NAMESPACE; 
    if (paramString.equals(getNamespaceURI()))
      return getNamespace(); 
    Iterator<Node> iterator = contentList().iterator();
    while (iterator.hasNext()) {
      Namespace namespace = NodeHelper.nodeAsNamespace(iterator.next());
      if (namespace != null && paramString.equals(namespace.getURI()))
        return namespace; 
    } 
    Element element = getParent();
    return (element != null) ? element.getNamespaceForURI(paramString) : null;
  }
  
  public Element getParent() {
    Element element = null;
    if (this.parentBranch instanceof Element)
      element = (Element)this.parentBranch; 
    return element;
  }
  
  public QName getQName() {
    return this.qname;
  }
  
  public String getStringValue() {
    if (contentList().size() == 0)
      return ""; 
    if (contentList().size() == 1)
      return getContentAsStringValue(contentList().get(0)); 
    StringBuilder stringBuilder = new StringBuilder();
    Iterator<Node> iterator = contentList().iterator();
    while (iterator.hasNext()) {
      String str = getContentAsStringValue(iterator.next());
      if (str.length() > 0)
        stringBuilder.append(str); 
    } 
    return stringBuilder.toString();
  }
  
  public int indexOf(Node paramNode) {
    return contentList().indexOf(paramNode);
  }
  
  public Node node(int paramInt) {
    return (paramInt < 0 || paramInt >= contentList().size()) ? null : contentList().get(paramInt);
  }
  
  public int nodeCount() {
    return contentList().size();
  }
  
  public Iterator<Node> nodeIterator() {
    return contentList().iterator();
  }
  
  public ProcessingInstruction processingInstruction(String paramString) {
    Iterator<Node> iterator = contentList().iterator();
    while (iterator.hasNext()) {
      ProcessingInstruction processingInstruction = NodeHelper.nodeAsProcessingInstruction(iterator.next());
      if (processingInstruction != null && paramString.equals(processingInstruction.getName()))
        return processingInstruction; 
    } 
    return null;
  }
  
  public List<ProcessingInstruction> processingInstructions() {
    BackedList backedList = createResultList();
    Iterator<Node> iterator = contentList().iterator();
    while (iterator.hasNext()) {
      ProcessingInstruction processingInstruction = NodeHelper.nodeAsProcessingInstruction(iterator.next());
      if (processingInstruction != null)
        backedList.addLocal((Node)processingInstruction); 
    } 
    return (List<ProcessingInstruction>)backedList;
  }
  
  public List<ProcessingInstruction> processingInstructions(String paramString) {
    BackedList backedList = createResultList();
    Iterator<Node> iterator = contentList().iterator();
    while (iterator.hasNext()) {
      ProcessingInstruction processingInstruction = NodeHelper.nodeAsProcessingInstruction(iterator.next());
      if (processingInstruction != null && paramString.equals(processingInstruction.getName()))
        backedList.addLocal((Node)processingInstruction); 
    } 
    return (List<ProcessingInstruction>)backedList;
  }
  
  public boolean remove(Attribute paramAttribute) {
    boolean bool2 = attributeList().remove(paramAttribute);
    boolean bool1 = bool2;
    if (!bool2) {
      Attribute attribute = attribute(paramAttribute.getQName());
      bool1 = bool2;
      if (attribute != null)
        bool1 = attributeList().remove(attribute); 
    } 
    if (bool1)
      childRemoved((Node)paramAttribute); 
    return bool1;
  }
  
  public boolean removeNode(Node paramNode) {
    boolean bool = contentList().remove(paramNode);
    if (bool)
      childRemoved(paramNode); 
    return bool;
  }
  
  public boolean removeProcessingInstruction(String paramString) {
    Iterator<Node> iterator = this.content.iterator();
    while (iterator.hasNext()) {
      ProcessingInstruction processingInstruction = NodeHelper.nodeAsProcessingInstruction(iterator.next());
      if (processingInstruction != null && paramString.equals(processingInstruction.getName())) {
        iterator.remove();
        return true;
      } 
    } 
    return false;
  }
  
  public void setAttributeList(List<Attribute> paramList) {
    attributeList().clear();
    attributeList().addAll(paramList);
  }
  
  public void setAttributes(List<Attribute> paramList) {
    List<Attribute> list = paramList;
    if (paramList instanceof ContentListFacade)
      list = ((ContentListFacade)paramList).getBackingList(); 
    this.attributes.clear();
    if (list != null)
      this.attributes.addAll(list); 
  }
  
  public void setContent(List<Node> paramList) {
    contentRemoved();
    List<Node> list1 = paramList;
    if (paramList instanceof ContentListFacade)
      list1 = ((ContentListFacade)paramList).getBackingList(); 
    List<Node> list2 = createContentList();
    if (list1 != null)
      for (Node node2 : list1) {
        Element element = node2.getParent();
        Node node1 = node2;
        if (element != null) {
          node1 = node2;
          if (element != this)
            node1 = (Node)node2.clone(); 
        } 
        list2.add(node1);
        childAdded(node1);
      }  
    this.content = list2;
  }
  
  public void setDocument(Document paramDocument) {
    if (this.parentBranch instanceof Document || paramDocument != null)
      this.parentBranch = (Branch)paramDocument; 
  }
  
  public void setParent(Element paramElement) {
    if (this.parentBranch instanceof Element || paramElement != null)
      this.parentBranch = (Branch)paramElement; 
  }
  
  public void setQName(QName paramQName) {
    this.qname = paramQName;
  }
  
  public boolean supportsParent() {
    return true;
  }
  
  static {
    boolean bool;
    if (!DefaultElement.class.desiredAssertionStatus()) {
      bool = true;
    } else {
      bool = false;
    } 
    $assertionsDisabled = bool;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\org\dom4j\tree\DefaultElement.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */