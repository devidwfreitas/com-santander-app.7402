package org.dom4j.tree;

import java.util.Iterator;
import java.util.List;
import org.dom4j.Document;
import org.dom4j.DocumentFactory;
import org.dom4j.DocumentType;
import org.dom4j.Element;
import org.dom4j.IllegalAddException;
import org.dom4j.Node;
import org.dom4j.NodeHelper;
import org.dom4j.ProcessingInstruction;
import org.xml.sax.EntityResolver;

public class DefaultDocument extends AbstractDocument {
  private final List<Node> content = new LazyList<Node>();
  
  private DocumentType docType;
  
  private DocumentFactory documentFactory = DocumentFactory.getInstance();
  
  private transient EntityResolver entityResolver;
  
  private String name;
  
  private Element rootElement;
  
  static {
    boolean bool;
    if (!DefaultDocument.class.desiredAssertionStatus()) {
      bool = true;
    } else {
      bool = false;
    } 
    $assertionsDisabled = bool;
  }
  
  public DefaultDocument() {
    this((String)null, (Element)null, (DocumentType)null);
  }
  
  public DefaultDocument(String paramString) {
    this(paramString, (Element)null, (DocumentType)null);
  }
  
  public DefaultDocument(String paramString, Element paramElement, DocumentType paramDocumentType) {
    this.name = paramString;
    setRootElement(paramElement);
    this.docType = paramDocumentType;
  }
  
  public DefaultDocument(DocumentType paramDocumentType) {
    this((String)null, (Element)null, paramDocumentType);
  }
  
  public DefaultDocument(Element paramElement) {
    this((String)null, paramElement, (DocumentType)null);
  }
  
  public DefaultDocument(Element paramElement, DocumentType paramDocumentType) {
    this((String)null, paramElement, paramDocumentType);
  }
  
  public Document addDocType(String paramString1, String paramString2, String paramString3) {
    setDocType(getDocumentFactory().createDocType(paramString1, paramString2, paramString3));
    return this;
  }
  
  protected void addNode(int paramInt, Node paramNode) {
    if (paramNode != null) {
      Document document = paramNode.getDocument();
      if (document != null && document != this)
        throw new IllegalAddException(this, paramNode, "The Node already has an existing document: " + document); 
      contentList().add(paramInt, paramNode);
      childAdded(paramNode);
    } 
  }
  
  protected void addNode(Node paramNode) {
    if (paramNode != null) {
      Document document = paramNode.getDocument();
      if (document != null && document != this)
        throw new IllegalAddException(this, paramNode, "The Node already has an existing document: " + document); 
      contentList().add(paramNode);
      childAdded(paramNode);
    } 
  }
  
  public void clearContent() {
    contentRemoved();
    contentList().clear();
    this.rootElement = null;
  }
  
  public DefaultDocument clone() {
    DefaultDocument defaultDocument = (DefaultDocument)super.clone();
    defaultDocument.rootElement = null;
    CloneHelper.setFinalContent(DefaultDocument.class, defaultDocument);
    defaultDocument.appendContent(this);
    return defaultDocument;
  }
  
  protected List<Node> contentList() {
    assert this.content != null;
    return this.content;
  }
  
  public DocumentType getDocType() {
    return this.docType;
  }
  
  public DocumentFactory getDocumentFactory() {
    return this.documentFactory;
  }
  
  public EntityResolver getEntityResolver() {
    return this.entityResolver;
  }
  
  public String getName() {
    return this.name;
  }
  
  public Element getRootElement() {
    return this.rootElement;
  }
  
  public String getXMLEncoding() {
    return this.encoding;
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
    BackedList<Node> backedList = createResultList();
    Iterator<Node> iterator = contentList().iterator();
    while (iterator.hasNext()) {
      ProcessingInstruction processingInstruction = NodeHelper.nodeAsProcessingInstruction(iterator.next());
      if (processingInstruction != null)
        backedList.add(processingInstruction); 
    } 
    return (List)backedList;
  }
  
  public List<ProcessingInstruction> processingInstructions(String paramString) {
    BackedList<Node> backedList = createResultList();
    Iterator<Node> iterator = contentList().iterator();
    while (iterator.hasNext()) {
      ProcessingInstruction processingInstruction = NodeHelper.nodeAsProcessingInstruction(iterator.next());
      if (processingInstruction != null && paramString.equals(processingInstruction.getName()))
        backedList.add(processingInstruction); 
    } 
    return (List)backedList;
  }
  
  protected boolean removeNode(Node paramNode) {
    if (paramNode == this.rootElement)
      this.rootElement = null; 
    if (contentList().remove(paramNode)) {
      childRemoved(paramNode);
      return true;
    } 
    return false;
  }
  
  public boolean removeProcessingInstruction(String paramString) {
    Iterator<Node> iterator = contentList().iterator();
    while (iterator.hasNext()) {
      ProcessingInstruction processingInstruction = NodeHelper.nodeAsProcessingInstruction(iterator.next());
      if (processingInstruction != null && paramString.equals(processingInstruction.getName())) {
        iterator.remove();
        return true;
      } 
    } 
    return false;
  }
  
  protected void rootElementAdded(Element paramElement) {
    this.rootElement = paramElement;
    paramElement.setDocument(this);
  }
  
  public void setContent(List<Node> paramList) {
    this.rootElement = null;
    contentRemoved();
    List<Node> list1 = paramList;
    if (paramList instanceof ContentListFacade)
      list1 = ((ContentListFacade<Node>)paramList).getBackingList(); 
    contentList().clear();
    if (list1 == null)
      return; 
    List<Node> list2 = createContentList();
    for (Node node2 : list1) {
      Document document = node2.getDocument();
      Node node1 = node2;
      if (document != null) {
        node1 = node2;
        if (document != this)
          node1 = (Node)node2.clone(); 
      } 
      Element element = NodeHelper.nodeAsElement(node1);
      if (element != null)
        if (this.rootElement == null) {
          this.rootElement = element;
        } else {
          throw new IllegalAddException("A document may only contain one root element: " + list1);
        }  
      list2.add(node1);
      childAdded(node1);
    } 
    contentList().addAll(list2);
  }
  
  public void setDocType(DocumentType paramDocumentType) {
    this.docType = paramDocumentType;
  }
  
  public void setDocumentFactory(DocumentFactory paramDocumentFactory) {
    this.documentFactory = paramDocumentFactory;
  }
  
  public void setEntityResolver(EntityResolver paramEntityResolver) {
    this.entityResolver = paramEntityResolver;
  }
  
  public void setName(String paramString) {
    this.name = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\tree\DefaultDocument.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */