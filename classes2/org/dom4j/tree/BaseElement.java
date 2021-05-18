package org.dom4j.tree;

import java.util.List;
import org.dom4j.Attribute;
import org.dom4j.Branch;
import org.dom4j.Document;
import org.dom4j.Element;
import org.dom4j.Namespace;
import org.dom4j.Node;
import org.dom4j.QName;

public class BaseElement extends AbstractElement {
  public List<Attribute> attributes;
  
  public List<Node> content;
  
  private Branch parentBranch;
  
  private QName qname;
  
  public BaseElement(String paramString) {
    this.qname = getDocumentFactory().createQName(paramString);
  }
  
  public BaseElement(String paramString, Namespace paramNamespace) {
    this.qname = getDocumentFactory().createQName(paramString, paramNamespace);
  }
  
  public BaseElement(QName paramQName) {
    this.qname = paramQName;
  }
  
  protected List<Attribute> attributeList() {
    if (this.attributes == null)
      this.attributes = createAttributeList(); 
    return this.attributes;
  }
  
  protected List<Attribute> attributeList(int paramInt) {
    if (this.attributes == null)
      this.attributes = createAttributeList(paramInt); 
    return this.attributes;
  }
  
  public void clearContent() {
    contentList().clear();
  }
  
  protected List<Node> contentList() {
    if (this.content == null)
      this.content = createContentList(); 
    return this.content;
  }
  
  public Document getDocument() {
    return (this.parentBranch instanceof Document) ? (Document)this.parentBranch : ((this.parentBranch instanceof Element) ? ((Element)this.parentBranch).getDocument() : null);
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
  
  protected void setAttributeList(List<Attribute> paramList) {
    this.attributes = paramList;
  }
  
  public void setAttributes(List<Attribute> paramList) {
    this.attributes = paramList;
    if (paramList instanceof ContentListFacade)
      this.attributes = ((ContentListFacade<Attribute>)paramList).getBackingList(); 
  }
  
  public void setContent(List<Node> paramList) {
    this.content = paramList;
    if (paramList instanceof ContentListFacade)
      this.content = ((ContentListFacade<Node>)paramList).getBackingList(); 
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
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\tree\BaseElement.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */