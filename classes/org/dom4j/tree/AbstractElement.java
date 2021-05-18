package org.dom4j.tree;

import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.dom4j.Attribute;
import org.dom4j.Branch;
import org.dom4j.CDATA;
import org.dom4j.Comment;
import org.dom4j.Document;
import org.dom4j.DocumentFactory;
import org.dom4j.Element;
import org.dom4j.Entity;
import org.dom4j.IllegalAddException;
import org.dom4j.Namespace;
import org.dom4j.Node;
import org.dom4j.NodeHelper;
import org.dom4j.NodeType;
import org.dom4j.ProcessingInstruction;
import org.dom4j.QName;
import org.dom4j.Text;
import org.dom4j.Visitor;
import org.dom4j.io.OutputFormat;
import org.dom4j.io.XMLWriter;
import org.xml.sax.Attributes;

public abstract class AbstractElement extends AbstractBranch implements Element {
  private static final DocumentFactory DOCUMENT_FACTORY = DocumentFactory.getInstance();
  
  protected static final boolean USE_STRINGVALUE_SEPARATOR = false;
  
  protected static final boolean VERBOSE_TOSTRING = false;
  
  public void accept(Visitor paramVisitor) {
    boolean bool = false;
    paramVisitor.visit(this);
    int j = attributeCount();
    int i;
    for (i = 0; i < j; i++)
      paramVisitor.visit(attribute(i)); 
    j = nodeCount();
    for (i = bool; i < j; i++)
      node(i).accept(paramVisitor); 
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
  
  public void add(CDATA paramCDATA) {
    addNode((Node)paramCDATA);
  }
  
  public void add(Comment paramComment) {
    addNode((Node)paramComment);
  }
  
  public void add(Element paramElement) {
    addNode((Node)paramElement);
  }
  
  public void add(Entity paramEntity) {
    addNode((Node)paramEntity);
  }
  
  public void add(Namespace paramNamespace) {
    addNode((Node)paramNamespace);
  }
  
  public void add(Node paramNode) {
    switch (null.$SwitchMap$org$dom4j$NodeType[paramNode.getNodeTypeEnum().ordinal()]) {
      default:
        invalidNodeTypeAddException(paramNode);
        return;
      case 1:
        add((Element)paramNode);
        return;
      case 2:
        add((Attribute)paramNode);
        return;
      case 3:
        add((Text)paramNode);
        return;
      case 4:
        add((CDATA)paramNode);
        return;
      case 5:
        add((Entity)paramNode);
        return;
      case 6:
        add((ProcessingInstruction)paramNode);
        return;
      case 7:
        add((Comment)paramNode);
        return;
      case 8:
        break;
    } 
    add((Namespace)paramNode);
  }
  
  public void add(ProcessingInstruction paramProcessingInstruction) {
    addNode((Node)paramProcessingInstruction);
  }
  
  public void add(Text paramText) {
    addNode((Node)paramText);
  }
  
  public Element addAttribute(String paramString1, String paramString2) {
    Attribute attribute = attribute(paramString1);
    if (paramString2 != null) {
      if (attribute == null) {
        add(getDocumentFactory().createAttribute(this, paramString1, paramString2));
        return this;
      } 
      if (attribute.isReadOnly()) {
        remove(attribute);
        add(getDocumentFactory().createAttribute(this, paramString1, paramString2));
        return this;
      } 
      attribute.setValue(paramString2);
      return this;
    } 
    if (attribute != null) {
      remove(attribute);
      return this;
    } 
    return this;
  }
  
  public Element addAttribute(QName paramQName, String paramString) {
    Attribute attribute = attribute(paramQName);
    if (paramString != null) {
      if (attribute == null) {
        add(getDocumentFactory().createAttribute(this, paramQName, paramString));
        return this;
      } 
      if (attribute.isReadOnly()) {
        remove(attribute);
        add(getDocumentFactory().createAttribute(this, paramQName, paramString));
        return this;
      } 
      attribute.setValue(paramString);
      return this;
    } 
    if (attribute != null) {
      remove(attribute);
      return this;
    } 
    return this;
  }
  
  public Element addCDATA(String paramString) {
    addNewNode((Node)getDocumentFactory().createCDATA(paramString));
    return this;
  }
  
  public Element addComment(String paramString) {
    addNewNode((Node)getDocumentFactory().createComment(paramString));
    return this;
  }
  
  public Element addElement(String paramString) {
    Namespace namespace;
    String str;
    DocumentFactory documentFactory = getDocumentFactory();
    int i = paramString.indexOf(":");
    if (i > 0) {
      String str1 = paramString.substring(0, i);
      str = paramString.substring(i + 1);
      Namespace namespace1 = getNamespaceForPrefix(str1);
      namespace = namespace1;
      if (namespace1 == null)
        throw new IllegalAddException("No such namespace prefix: " + str1 + " is in scope on: " + this + " so cannot add element: " + paramString); 
    } else {
      namespace = getNamespaceForPrefix("");
      str = paramString;
    } 
    if (namespace != null) {
      element = documentFactory.createElement(documentFactory.createQName(str, namespace));
      addNewNode((Node)element);
      return element;
    } 
    Element element = documentFactory.createElement((String)element);
    addNewNode((Node)element);
    return element;
  }
  
  public Element addEntity(String paramString1, String paramString2) {
    addNewNode((Node)getDocumentFactory().createEntity(paramString1, paramString2));
    return this;
  }
  
  public Element addNamespace(String paramString1, String paramString2) {
    addNewNode((Node)getDocumentFactory().createNamespace(paramString1, paramString2));
    return this;
  }
  
  protected void addNewNode(int paramInt, Node paramNode) {
    contentList().add(paramInt, paramNode);
    childAdded(paramNode);
  }
  
  protected void addNewNode(Node paramNode) {
    contentList().add(paramNode);
    childAdded(paramNode);
  }
  
  protected void addNode(int paramInt, Node paramNode) {
    if (paramNode.getParent() != null)
      throw new IllegalAddException(this, paramNode, "The Node already has an existing parent of \"" + paramNode.getParent().getQualifiedName() + "\""); 
    addNewNode(paramInt, paramNode);
  }
  
  public void addNode(Node paramNode) {
    if (paramNode.getParent() != null)
      throw new IllegalAddException(this, paramNode, "The Node already has an existing parent of \"" + paramNode.getParent().getQualifiedName() + "\""); 
    addNewNode(paramNode);
  }
  
  public Element addProcessingInstruction(String paramString1, String paramString2) {
    addNewNode((Node)getDocumentFactory().createProcessingInstruction(paramString1, paramString2));
    return this;
  }
  
  public Element addProcessingInstruction(String paramString, Map paramMap) {
    addNewNode((Node)getDocumentFactory().createProcessingInstruction(paramString, paramMap));
    return this;
  }
  
  public Element addText(String paramString) {
    addNewNode((Node)getDocumentFactory().createText(paramString));
    return this;
  }
  
  public List<Namespace> additionalNamespaces() {
    List<Node> list = contentList();
    int j = list.size();
    BackedList backedList = createResultList();
    for (int i = 0; i < j; i++) {
      Node node = list.get(i);
      if (node instanceof Namespace) {
        Namespace namespace = (Namespace)node;
        if (!namespace.equals(getNamespace()))
          backedList.addLocal((Node)namespace); 
      } 
    } 
    return (List<Namespace>)backedList;
  }
  
  public List<Namespace> additionalNamespaces(String paramString) {
    List<Node> list = contentList();
    BackedList backedList = createResultList();
    int j = list.size();
    for (int i = 0; i < j; i++) {
      Node node = list.get(i);
      if (node instanceof Namespace) {
        Namespace namespace = (Namespace)node;
        if (!paramString.equals(namespace.getURI()))
          backedList.addLocal((Node)namespace); 
      } 
    } 
    return (List<Namespace>)backedList;
  }
  
  public void appendAttributes(Element paramElement) {
    int i = 0;
    int j = paramElement.attributeCount();
    while (i < j) {
      Attribute attribute = paramElement.attribute(i);
      if (attribute.supportsParent()) {
        addAttribute(attribute.getQName(), attribute.getValue());
      } else {
        add(attribute);
      } 
      i++;
    } 
  }
  
  public String asXML() {
    try {
      StringWriter stringWriter = new StringWriter();
      XMLWriter xMLWriter = new XMLWriter(stringWriter, new OutputFormat());
      xMLWriter.write(this);
      xMLWriter.flush();
      return stringWriter.toString();
    } catch (IOException iOException) {
      throw new RuntimeException("IOException while generating textual representation: " + iOException.getMessage());
    } 
  }
  
  public Attribute attribute(int paramInt) {
    return attributeList().get(paramInt);
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
  
  protected abstract List<Attribute> attributeList();
  
  protected abstract List<Attribute> attributeList(int paramInt);
  
  public String attributeValue(String paramString) {
    return NodeHelper.getAttributeValue(attribute(paramString), null);
  }
  
  public String attributeValue(String paramString1, String paramString2) {
    return NodeHelper.getAttributeValue(attribute(paramString1), paramString2);
  }
  
  public String attributeValue(QName paramQName) {
    return NodeHelper.getAttributeValue(attribute(paramQName), null);
  }
  
  public String attributeValue(QName paramQName, String paramString) {
    return NodeHelper.getAttributeValue(attribute(paramQName), paramString);
  }
  
  public List<Attribute> attributes() {
    return (List<Attribute>)new ContentListFacade(this, attributeList());
  }
  
  public void childAdded(Node paramNode) {
    if (paramNode != null)
      paramNode.setParent(this); 
  }
  
  public void childRemoved(Node paramNode) {
    if (paramNode != null) {
      paramNode.setParent(null);
      paramNode.setDocument(null);
    } 
  }
  
  public List<Attribute> createAttributeList() {
    return createAttributeList(5);
  }
  
  public List<Attribute> createAttributeList(int paramInt) {
    return new ArrayList<Attribute>(paramInt);
  }
  
  public Element createCopy() {
    Element element = createElement(getQName());
    element.appendAttributes(this);
    element.appendContent((Branch)this);
    return element;
  }
  
  public Element createCopy(String paramString) {
    Element element = createElement(paramString);
    element.appendAttributes(this);
    element.appendContent((Branch)this);
    return element;
  }
  
  public Element createCopy(QName paramQName) {
    Element element = createElement(paramQName);
    element.appendAttributes(this);
    element.appendContent((Branch)this);
    return element;
  }
  
  public Element createElement(String paramString) {
    return getDocumentFactory().createElement(paramString);
  }
  
  public Element createElement(QName paramQName) {
    return getDocumentFactory().createElement(paramQName);
  }
  
  @Deprecated
  protected <T> Iterator<T> createSingleIterator(T paramT) {
    return (Iterator<T>)new SingleIterator(paramT);
  }
  
  public List<Namespace> declaredNamespaces() {
    BackedList backedList = createResultList();
    List<Node> list = contentList();
    int j = list.size();
    for (int i = 0; i < j; i++) {
      Node node = list.get(i);
      if (node instanceof Namespace)
        backedList.addLocal(node); 
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
  
  public Iterator<Element> elementIterator() {
    return elements().iterator();
  }
  
  public Iterator<Element> elementIterator(String paramString) {
    return elements(paramString).iterator();
  }
  
  public Iterator<Element> elementIterator(String paramString, Namespace paramNamespace) {
    return elementIterator(getDocumentFactory().createQName(paramString, paramNamespace));
  }
  
  public Iterator<Element> elementIterator(QName paramQName) {
    return elements(paramQName).iterator();
  }
  
  public String elementText(String paramString) {
    Element element = element(paramString);
    return (element != null) ? element.getText() : null;
  }
  
  public String elementText(QName paramQName) {
    Element element = element(paramQName);
    return (element != null) ? element.getText() : null;
  }
  
  public String elementTextTrim(String paramString) {
    Element element = element(paramString);
    return (element != null) ? element.getTextTrim() : null;
  }
  
  public String elementTextTrim(QName paramQName) {
    Element element = element(paramQName);
    return (element != null) ? element.getTextTrim() : null;
  }
  
  public List<Element> elements() {
    BackedList backedList = createResultList();
    Iterator<Node> iterator = contentList().iterator();
    while (iterator.hasNext())
      NodeHelper.appendElementLocal(iterator.next(), backedList); 
    return (List<Element>)backedList;
  }
  
  public List<Element> elements(String paramString) {
    BackedList backedList = createResultList();
    Iterator<Node> iterator = contentList().iterator();
    while (iterator.hasNext())
      NodeHelper.appendElementNamedLocal(iterator.next(), backedList, paramString); 
    return (List<Element>)backedList;
  }
  
  public List elements(String paramString, Namespace paramNamespace) {
    return elements(getDocumentFactory().createQName(paramString, paramNamespace));
  }
  
  public List<Element> elements(QName paramQName) {
    BackedList backedList = createResultList();
    Iterator<Node> iterator = contentList().iterator();
    while (iterator.hasNext())
      NodeHelper.appendElementQNamedLocal(iterator.next(), backedList, paramQName); 
    return (List<Element>)backedList;
  }
  
  public void ensureAttributesCapacity(int paramInt) {
    if (paramInt > 1) {
      List<Attribute> list = attributeList();
      if (list instanceof ArrayList)
        ((ArrayList)list).ensureCapacity(paramInt); 
    } 
  }
  
  public Object getData() {
    return getText();
  }
  
  public DocumentFactory getDocumentFactory() {
    QName qName = getQName();
    if (qName != null) {
      DocumentFactory documentFactory = qName.getDocumentFactory();
      if (documentFactory != null)
        return documentFactory; 
    } 
    return DOCUMENT_FACTORY;
  }
  
  public String getName() {
    return getQName().getName();
  }
  
  public Namespace getNamespace() {
    return getQName().getNamespace();
  }
  
  public Namespace getNamespaceForPrefix(String paramString) {
    // Byte code:
    //   0: aload_1
    //   1: astore #4
    //   3: aload_1
    //   4: ifnonnull -> 11
    //   7: ldc ''
    //   9: astore #4
    //   11: aload #4
    //   13: aload_0
    //   14: invokevirtual getNamespacePrefix : ()Ljava/lang/String;
    //   17: invokevirtual equals : (Ljava/lang/Object;)Z
    //   20: ifeq -> 30
    //   23: aload_0
    //   24: invokevirtual getNamespace : ()Lorg/dom4j/Namespace;
    //   27: astore_1
    //   28: aload_1
    //   29: areturn
    //   30: aload #4
    //   32: ldc_w 'xml'
    //   35: invokevirtual equals : (Ljava/lang/Object;)Z
    //   38: ifeq -> 45
    //   41: getstatic org/dom4j/Namespace.XML_NAMESPACE : Lorg/dom4j/Namespace;
    //   44: areturn
    //   45: aload_0
    //   46: invokevirtual contentList : ()Ljava/util/List;
    //   49: astore #6
    //   51: aload #6
    //   53: invokeinterface size : ()I
    //   58: istore_3
    //   59: iconst_0
    //   60: istore_2
    //   61: iload_2
    //   62: iload_3
    //   63: if_icmpge -> 111
    //   66: aload #6
    //   68: iload_2
    //   69: invokeinterface get : (I)Ljava/lang/Object;
    //   74: astore_1
    //   75: aload_1
    //   76: instanceof org/dom4j/Namespace
    //   79: ifeq -> 104
    //   82: aload_1
    //   83: checkcast org/dom4j/Namespace
    //   86: astore #5
    //   88: aload #5
    //   90: astore_1
    //   91: aload #4
    //   93: aload #5
    //   95: invokevirtual getPrefix : ()Ljava/lang/String;
    //   98: invokevirtual equals : (Ljava/lang/Object;)Z
    //   101: ifne -> 28
    //   104: iload_2
    //   105: iconst_1
    //   106: iadd
    //   107: istore_2
    //   108: goto -> 61
    //   111: aload_0
    //   112: invokevirtual getParent : ()Lorg/dom4j/Element;
    //   115: astore_1
    //   116: aload_1
    //   117: ifnull -> 138
    //   120: aload_1
    //   121: aload #4
    //   123: invokeinterface getNamespaceForPrefix : (Ljava/lang/String;)Lorg/dom4j/Namespace;
    //   128: astore #5
    //   130: aload #5
    //   132: astore_1
    //   133: aload #5
    //   135: ifnonnull -> 28
    //   138: aload #4
    //   140: ifnull -> 151
    //   143: aload #4
    //   145: invokevirtual length : ()I
    //   148: ifgt -> 155
    //   151: getstatic org/dom4j/Namespace.NO_NAMESPACE : Lorg/dom4j/Namespace;
    //   154: areturn
    //   155: aconst_null
    //   156: areturn
  }
  
  public Namespace getNamespaceForURI(String paramString) {
    if (paramString == null || paramString.length() <= 0)
      return Namespace.NO_NAMESPACE; 
    if (paramString.equals(getNamespaceURI()))
      return getNamespace(); 
    List<Object> list = contentList();
    int j = list.size();
    for (int i = 0; i < j; i++) {
      Namespace namespace = (Namespace)list.get(i);
      if (namespace instanceof Namespace) {
        Namespace namespace1 = namespace;
        namespace = namespace1;
        if (!paramString.equals(namespace1.getURI()))
          continue; 
        return namespace;
      } 
      continue;
    } 
    return null;
  }
  
  public String getNamespacePrefix() {
    return getQName().getNamespacePrefix();
  }
  
  public String getNamespaceURI() {
    return getQName().getNamespaceURI();
  }
  
  public List<Namespace> getNamespacesForURI(String paramString) {
    BackedList backedList = createResultList();
    List<Node> list = contentList();
    int j = list.size();
    for (int i = 0; i < j; i++) {
      Node node = list.get(i);
      if (node instanceof Namespace && ((Namespace)node).getURI().equals(paramString))
        backedList.addLocal(node); 
    } 
    return (List<Namespace>)backedList;
  }
  
  public NodeType getNodeTypeEnum() {
    return NodeType.ELEMENT_NODE;
  }
  
  public String getPath(Element paramElement) {
    if (this == paramElement)
      return "."; 
    Element element = getParent();
    return (element == null) ? ("/" + getXPathNameStep()) : ((element == paramElement) ? getXPathNameStep() : (element.getPath(paramElement) + "/" + getXPathNameStep()));
  }
  
  public QName getQName(String paramString) {
    String str2 = "";
    int i = paramString.indexOf(":");
    String str1 = paramString;
    if (i > 0) {
      str2 = paramString.substring(0, i);
      str1 = paramString.substring(i + 1);
    } 
    Namespace namespace = getNamespaceForPrefix(str2);
    return (namespace != null) ? getDocumentFactory().createQName(str1, namespace) : getDocumentFactory().createQName(str1);
  }
  
  public String getQualifiedName() {
    return getQName().getQualifiedName();
  }
  
  public String getStringValue() {
    List<Node> list = contentList();
    int i = list.size();
    if (i > 0) {
      if (i == 1)
        return getContentAsStringValue(list.get(0)); 
      StringBuffer stringBuffer = new StringBuffer();
      for (int j = 0; j < i; j++) {
        String str = getContentAsStringValue(list.get(j));
        if (str.length() > 0)
          stringBuffer.append(str); 
      } 
      return stringBuffer.toString();
    } 
    return "";
  }
  
  public String getUniquePath(Element paramElement) {
    Element element = getParent();
    if (element == null)
      return "/" + getXPathNameStep(); 
    StringBuffer stringBuffer = new StringBuffer();
    if (element != paramElement) {
      stringBuffer.append(element.getUniquePath(paramElement));
      stringBuffer.append("/");
    } 
    stringBuffer.append(getXPathNameStep());
    List list = element.elements(getQName());
    if (list.size() > 1) {
      int i = list.indexOf(this);
      if (i >= 0) {
        stringBuffer.append("[");
        stringBuffer.append(Integer.toString(i + 1));
        stringBuffer.append("]");
      } 
    } 
    return stringBuffer.toString();
  }
  
  public String getXPathNameStep() {
    String str = getNamespaceURI();
    if (str == null || str.length() == 0)
      return getName(); 
    str = getNamespacePrefix();
    return (str == null || str.length() == 0) ? ("*[name()='" + getName() + "']") : getQualifiedName();
  }
  
  public Node getXPathResult(int paramInt) {
    Node node2 = node(paramInt);
    Node node1 = node2;
    if (node2 != null) {
      node1 = node2;
      if (!node2.supportsParent())
        node1 = node2.asXPathResult(this); 
    } 
    return node1;
  }
  
  public boolean hasMixedContent() {
    List list = contentList();
    if (list == null || list.isEmpty() || list.size() < 2)
      return false; 
    Class<?> clazz = null;
    Iterator<Node> iterator = list.iterator();
    while (iterator.hasNext()) {
      Class<?> clazz1 = ((Node)iterator.next()).getClass();
      if (clazz1 != clazz) {
        if (clazz != null)
          return true; 
      } else {
        clazz1 = clazz;
      } 
      clazz = clazz1;
    } 
    return false;
  }
  
  public int indexOf(Node paramNode) {
    return contentList().indexOf(paramNode);
  }
  
  public boolean isRootElement() {
    Document document = getDocument();
    return (document != null && document.getRootElement() == this);
  }
  
  public boolean isTextOnly() {
    List list = contentList();
    if (list == null || list.isEmpty())
      return true; 
    Iterator iterator = list.iterator();
    while (iterator.hasNext()) {
      if (!((Node)iterator.next() instanceof org.dom4j.CharacterData))
        return false; 
    } 
    return true;
  }
  
  public Node node(int paramInt) {
    if (paramInt >= 0) {
      List<Node> list = contentList();
      if (paramInt < list.size())
        return list.get(paramInt); 
    } 
    return null;
  }
  
  public int nodeCount() {
    return contentList().size();
  }
  
  public Iterator<Node> nodeIterator() {
    return contentList().iterator();
  }
  
  public void normalize() {
    List<Node> list = contentList();
    int i = 0;
    for (Text text = null; i < list.size(); text = null) {
      Text text1;
      Node node = list.get(i);
      if (node instanceof Text) {
        text1 = (Text)node;
        if (text != null) {
          text.appendText(text1.getText());
          remove(text1);
          continue;
        } 
        String str = text1.getText();
        if (str == null || str.length() <= 0) {
          remove(text1);
          continue;
        } 
        text = text1;
        i++;
        continue;
      } 
      if (text1 instanceof Element)
        ((Element)text1).normalize(); 
      i++;
    } 
  }
  
  public ProcessingInstruction processingInstruction(String paramString) {
    List<Node> list = contentList();
    int j = list.size();
    for (int i = 0; i < j; i++) {
      Node node = list.get(i);
      if (node instanceof ProcessingInstruction) {
        ProcessingInstruction processingInstruction = (ProcessingInstruction)node;
        if (paramString.equals(processingInstruction.getName()))
          return processingInstruction; 
      } 
    } 
    return null;
  }
  
  public List<ProcessingInstruction> processingInstructions() {
    List<Node> list = contentList();
    BackedList backedList = createResultList();
    int j = list.size();
    for (int i = 0; i < j; i++) {
      Node node = list.get(i);
      if (node instanceof ProcessingInstruction)
        backedList.addLocal(node); 
    } 
    return (List<ProcessingInstruction>)backedList;
  }
  
  public List<ProcessingInstruction> processingInstructions(String paramString) {
    List<Node> list = contentList();
    BackedList backedList = createResultList();
    int j = list.size();
    for (int i = 0; i < j; i++) {
      Node node = list.get(i);
      if (node instanceof ProcessingInstruction) {
        ProcessingInstruction processingInstruction = (ProcessingInstruction)node;
        if (paramString.equals(processingInstruction.getName()))
          backedList.addLocal((Node)processingInstruction); 
      } 
    } 
    return (List<ProcessingInstruction>)backedList;
  }
  
  public boolean remove(Attribute paramAttribute) {
    List<Attribute> list = attributeList();
    boolean bool = list.remove(paramAttribute);
    if (bool) {
      childRemoved((Node)paramAttribute);
      return bool;
    } 
    paramAttribute = attribute(paramAttribute.getQName());
    if (paramAttribute != null) {
      list.remove(paramAttribute);
      return true;
    } 
    return bool;
  }
  
  public boolean remove(CDATA paramCDATA) {
    return removeNode((Node)paramCDATA);
  }
  
  public boolean remove(Comment paramComment) {
    return removeNode((Node)paramComment);
  }
  
  public boolean remove(Element paramElement) {
    return removeNode((Node)paramElement);
  }
  
  public boolean remove(Entity paramEntity) {
    return removeNode((Node)paramEntity);
  }
  
  public boolean remove(Namespace paramNamespace) {
    return removeNode((Node)paramNamespace);
  }
  
  public boolean remove(Node paramNode) {
    switch (null.$SwitchMap$org$dom4j$NodeType[paramNode.getNodeTypeEnum().ordinal()]) {
      default:
        return false;
      case 1:
        return remove((Element)paramNode);
      case 2:
        return remove((Attribute)paramNode);
      case 3:
        return remove((Text)paramNode);
      case 4:
        return remove((CDATA)paramNode);
      case 5:
        return remove((Entity)paramNode);
      case 6:
        return remove((ProcessingInstruction)paramNode);
      case 7:
        return remove((Comment)paramNode);
      case 8:
        break;
    } 
    return remove((Namespace)paramNode);
  }
  
  public boolean remove(ProcessingInstruction paramProcessingInstruction) {
    return removeNode((Node)paramProcessingInstruction);
  }
  
  public boolean remove(Text paramText) {
    return removeNode((Node)paramText);
  }
  
  public boolean removeNode(Node paramNode) {
    boolean bool = contentList().remove(paramNode);
    if (bool)
      childRemoved(paramNode); 
    return bool;
  }
  
  public boolean removeProcessingInstruction(String paramString) {
    Iterator<Node> iterator = contentList().iterator();
    while (iterator.hasNext()) {
      Node node = iterator.next();
      if (node instanceof ProcessingInstruction && paramString.equals(((ProcessingInstruction)node).getName())) {
        iterator.remove();
        return true;
      } 
    } 
    return false;
  }
  
  public void setAttributes(Attributes paramAttributes, NamespaceStack paramNamespaceStack, boolean paramBoolean) {
    String str;
    DocumentFactory documentFactory;
    int i = 0;
    int j = paramAttributes.getLength();
    if (j > 0) {
      documentFactory = getDocumentFactory();
      if (j == 1) {
        String str1 = paramAttributes.getQName(0);
        if (paramBoolean || !str1.startsWith("xmlns")) {
          String str2 = paramAttributes.getURI(0);
          String str3 = paramAttributes.getLocalName(0);
          str = paramAttributes.getValue(0);
          add(documentFactory.createAttribute(this, paramNamespaceStack.getAttributeQName(str2, str3, str1), str));
        } 
        return;
      } 
    } else {
      return;
    } 
    List<Attribute> list = attributeList(j);
    list.clear();
    while (true) {
      if (i < j) {
        String str1 = str.getQName(i);
        if (paramBoolean || !str1.startsWith("xmlns")) {
          String str2 = str.getURI(i);
          String str3 = str.getLocalName(i);
          String str4 = str.getValue(i);
          Attribute attribute = documentFactory.createAttribute(this, paramNamespaceStack.getAttributeQName(str2, str3, str1), str4);
          list.add(attribute);
          childAdded((Node)attribute);
        } 
        i++;
        continue;
      } 
      return;
    } 
  }
  
  public void setData(Object paramObject) {}
  
  public void setName(String paramString) {
    setQName(getDocumentFactory().createQName(paramString));
  }
  
  public void setNamespace(Namespace paramNamespace) {
    setQName(getDocumentFactory().createQName(getName(), paramNamespace));
  }
  
  public void setText(String paramString) {
    List list = contentList();
    if (list != null) {
      Iterator<Node> iterator = list.iterator();
      while (iterator.hasNext()) {
        Node node = iterator.next();
        switch (null.$SwitchMap$org$dom4j$NodeType[node.getNodeTypeEnum().ordinal()]) {
          case 3:
          case 4:
          case 5:
            iterator.remove();
            break;
        } 
      } 
    } 
    addText(paramString);
  }
  
  protected void toString(StringBuilder paramStringBuilder) {
    String str = getNamespaceURI();
    super.toString(paramStringBuilder);
    paramStringBuilder.append(" [Element: <");
    paramStringBuilder.append(getQualifiedName());
    if (str != null && str.length() > 0) {
      paramStringBuilder.append(" uri: ");
      paramStringBuilder.append(str);
    } 
    paramStringBuilder.append(" attributes: ");
    paramStringBuilder.append(attributeList());
    paramStringBuilder.append("/>]");
  }
  
  public void write(Writer paramWriter) {
    (new XMLWriter(paramWriter, new OutputFormat())).write(this);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\org\dom4j\tree\AbstractElement.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */