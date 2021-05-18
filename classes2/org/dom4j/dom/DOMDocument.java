package org.dom4j.dom;

import java.util.ArrayList;
import org.dom4j.Branch;
import org.dom4j.DocumentFactory;
import org.dom4j.DocumentType;
import org.dom4j.Element;
import org.dom4j.Node;
import org.dom4j.QName;
import org.dom4j.tree.DefaultDocument;
import org.w3c.dom.Attr;
import org.w3c.dom.CDATASection;
import org.w3c.dom.Comment;
import org.w3c.dom.DOMConfiguration;
import org.w3c.dom.DOMException;
import org.w3c.dom.DOMImplementation;
import org.w3c.dom.Document;
import org.w3c.dom.DocumentFragment;
import org.w3c.dom.DocumentType;
import org.w3c.dom.Element;
import org.w3c.dom.EntityReference;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.ProcessingInstruction;
import org.w3c.dom.Text;
import org.w3c.dom.UserDataHandler;

public class DOMDocument extends DefaultDocument implements Document {
  private static final DOMDocumentFactory DOCUMENT_FACTORY = (DOMDocumentFactory)DOMDocumentFactory.getInstance();
  
  public DOMDocument() {
    init();
  }
  
  public DOMDocument(String paramString) {
    super(paramString);
    init();
  }
  
  public DOMDocument(String paramString, DOMElement paramDOMElement, DOMDocumentType paramDOMDocumentType) {
    super(paramString, (Element)paramDOMElement, (DocumentType)paramDOMDocumentType);
    init();
  }
  
  public DOMDocument(DOMDocumentType paramDOMDocumentType) {
    super((DocumentType)paramDOMDocumentType);
    init();
  }
  
  public DOMDocument(DOMElement paramDOMElement) {
    super((Element)paramDOMElement);
    init();
  }
  
  public DOMDocument(DOMElement paramDOMElement, DOMDocumentType paramDOMDocumentType) {
    super((Element)paramDOMElement, (DocumentType)paramDOMDocumentType);
    init();
  }
  
  private void checkNewChildNode(Node paramNode) {
    short s = paramNode.getNodeType();
    if (s != 1 && s != 8 && s != 7 && s != 10)
      throw new DOMException((short)3, "Given node cannot be a child of document"); 
  }
  
  private void init() {
    setDocumentFactory(DOCUMENT_FACTORY);
  }
  
  public Node adoptNode(Node paramNode) {
    throw new UnsupportedOperationException("Not supported yet.");
  }
  
  public Node appendChild(Node paramNode) {
    checkNewChildNode(paramNode);
    return DOMNodeHelper.appendChild((Node)this, paramNode);
  }
  
  public Node cloneNode(boolean paramBoolean) {
    return DOMNodeHelper.cloneNode((Node)this, paramBoolean);
  }
  
  public short compareDocumentPosition(Node paramNode) {
    throw new UnsupportedOperationException("Not supported yet.");
  }
  
  public Attr createAttribute(String paramString) {
    QName qName = getDocumentFactory().createQName(paramString);
    return (Attr)getDocumentFactory().createAttribute(null, qName, "");
  }
  
  public Attr createAttributeNS(String paramString1, String paramString2) {
    QName qName = getDocumentFactory().createQName(paramString2, paramString1);
    return (Attr)getDocumentFactory().createAttribute(null, qName, null);
  }
  
  public CDATASection createCDATASection(String paramString) {
    return (CDATASection)getDocumentFactory().createCDATA(paramString);
  }
  
  public Comment createComment(String paramString) {
    return (Comment)getDocumentFactory().createComment(paramString);
  }
  
  public DocumentFragment createDocumentFragment() {
    DOMNodeHelper.notSupported();
    return null;
  }
  
  public Element createElement(String paramString) {
    return (Element)getDocumentFactory().createElement(paramString);
  }
  
  public Element createElementNS(String paramString1, String paramString2) {
    QName qName = getDocumentFactory().createQName(paramString2, paramString1);
    return (Element)getDocumentFactory().createElement(qName);
  }
  
  public EntityReference createEntityReference(String paramString) {
    return (EntityReference)getDocumentFactory().createEntity(paramString, null);
  }
  
  public ProcessingInstruction createProcessingInstruction(String paramString1, String paramString2) {
    return (ProcessingInstruction)getDocumentFactory().createProcessingInstruction(paramString1, paramString2);
  }
  
  public Text createTextNode(String paramString) {
    return (Text)getDocumentFactory().createText(paramString);
  }
  
  public NamedNodeMap getAttributes() {
    return null;
  }
  
  public String getBaseURI() {
    throw new UnsupportedOperationException("Not supported yet.");
  }
  
  public NodeList getChildNodes() {
    return DOMNodeHelper.createNodeList(content());
  }
  
  public DocumentType getDoctype() {
    return DOMNodeHelper.asDOMDocumentType(getDocType());
  }
  
  public Element getDocumentElement() {
    return DOMNodeHelper.asDOMElement((Node)getRootElement());
  }
  
  protected DocumentFactory getDocumentFactory() {
    return (super.getDocumentFactory() == null) ? DOCUMENT_FACTORY : super.getDocumentFactory();
  }
  
  public String getDocumentURI() {
    throw new UnsupportedOperationException("Not supported yet.");
  }
  
  public DOMConfiguration getDomConfig() {
    throw new UnsupportedOperationException("Not supported yet.");
  }
  
  public Element getElementById(String paramString) {
    return DOMNodeHelper.asDOMElement((Node)elementByID(paramString));
  }
  
  public NodeList getElementsByTagName(String paramString) {
    ArrayList arrayList = new ArrayList();
    DOMNodeHelper.appendElementsByTagName(arrayList, (Branch)this, paramString);
    return DOMNodeHelper.createNodeList(arrayList);
  }
  
  public NodeList getElementsByTagNameNS(String paramString1, String paramString2) {
    ArrayList arrayList = new ArrayList();
    DOMNodeHelper.appendElementsByTagNameNS(arrayList, (Branch)this, paramString1, paramString2);
    return DOMNodeHelper.createNodeList(arrayList);
  }
  
  public Object getFeature(String paramString1, String paramString2) {
    throw new UnsupportedOperationException("Not supported yet.");
  }
  
  public Node getFirstChild() {
    return DOMNodeHelper.asDOMNode(node(0));
  }
  
  public DOMImplementation getImplementation() {
    return (getDocumentFactory() instanceof DOMImplementation) ? (DOMImplementation)getDocumentFactory() : DOCUMENT_FACTORY;
  }
  
  public String getInputEncoding() {
    throw new UnsupportedOperationException("Not supported yet.");
  }
  
  public Node getLastChild() {
    return DOMNodeHelper.asDOMNode(node(nodeCount() - 1));
  }
  
  public String getLocalName() {
    return DOMNodeHelper.getLocalName((Node)this);
  }
  
  public String getNamespaceURI() {
    return DOMNodeHelper.getNamespaceURI((Node)this);
  }
  
  public Node getNextSibling() {
    return DOMNodeHelper.getNextSibling((Node)this);
  }
  
  public String getNodeName() {
    return "#document";
  }
  
  public String getNodeValue() {
    return null;
  }
  
  public Document getOwnerDocument() {
    return null;
  }
  
  public Node getParentNode() {
    return DOMNodeHelper.getParentNode((Node)this);
  }
  
  public String getPrefix() {
    return DOMNodeHelper.getPrefix((Node)this);
  }
  
  public Node getPreviousSibling() {
    return DOMNodeHelper.getPreviousSibling((Node)this);
  }
  
  public boolean getStrictErrorChecking() {
    throw new UnsupportedOperationException("Not supported yet.");
  }
  
  public String getTextContent() {
    throw new UnsupportedOperationException("Not supported yet.");
  }
  
  public Object getUserData(String paramString) {
    throw new UnsupportedOperationException("Not supported yet.");
  }
  
  public String getXmlEncoding() {
    throw new UnsupportedOperationException("Not supported yet.");
  }
  
  public boolean getXmlStandalone() {
    throw new UnsupportedOperationException("Not supported yet.");
  }
  
  public String getXmlVersion() {
    throw new UnsupportedOperationException("Not supported yet.");
  }
  
  public boolean hasAttributes() {
    return DOMNodeHelper.hasAttributes((Node)this);
  }
  
  public boolean hasChildNodes() {
    return (nodeCount() > 0);
  }
  
  public Node importNode(Node paramNode, boolean paramBoolean) {
    DOMNodeHelper.notSupported();
    return null;
  }
  
  public Node insertBefore(Node paramNode1, Node paramNode2) {
    checkNewChildNode(paramNode1);
    return DOMNodeHelper.insertBefore((Node)this, paramNode1, paramNode2);
  }
  
  public boolean isDefaultNamespace(String paramString) {
    throw new UnsupportedOperationException("Not supported yet.");
  }
  
  public boolean isEqualNode(Node paramNode) {
    throw new UnsupportedOperationException("Not supported yet.");
  }
  
  public boolean isSameNode(Node paramNode) {
    throw new UnsupportedOperationException("Not supported yet.");
  }
  
  public boolean isSupported(String paramString1, String paramString2) {
    return DOMNodeHelper.isSupported((Node)this, paramString1, paramString2);
  }
  
  public String lookupNamespaceURI(String paramString) {
    throw new UnsupportedOperationException("Not supported yet.");
  }
  
  public String lookupPrefix(String paramString) {
    throw new UnsupportedOperationException("Not supported yet.");
  }
  
  public void normalizeDocument() {
    throw new UnsupportedOperationException("Not supported yet.");
  }
  
  public Node removeChild(Node paramNode) {
    return DOMNodeHelper.removeChild((Node)this, paramNode);
  }
  
  public Node renameNode(Node paramNode, String paramString1, String paramString2) {
    throw new UnsupportedOperationException("Not supported yet.");
  }
  
  public Node replaceChild(Node paramNode1, Node paramNode2) {
    checkNewChildNode(paramNode1);
    return DOMNodeHelper.replaceChild((Node)this, paramNode1, paramNode2);
  }
  
  public void setDocumentURI(String paramString) {
    throw new UnsupportedOperationException("Not supported yet.");
  }
  
  public void setNodeValue(String paramString) {}
  
  public void setPrefix(String paramString) {
    DOMNodeHelper.setPrefix((Node)this, paramString);
  }
  
  public void setStrictErrorChecking(boolean paramBoolean) {
    throw new UnsupportedOperationException("Not supported yet.");
  }
  
  public void setTextContent(String paramString) {
    throw new UnsupportedOperationException("Not supported yet.");
  }
  
  public Object setUserData(String paramString, Object paramObject, UserDataHandler paramUserDataHandler) {
    throw new UnsupportedOperationException("Not supported yet.");
  }
  
  public void setXmlStandalone(boolean paramBoolean) {
    throw new UnsupportedOperationException("Not supported yet.");
  }
  
  public void setXmlVersion(String paramString) {
    throw new UnsupportedOperationException("Not supported yet.");
  }
  
  public boolean supports(String paramString1, String paramString2) {
    return DOMNodeHelper.supports((Node)this, paramString1, paramString2);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\dom\DOMDocument.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */