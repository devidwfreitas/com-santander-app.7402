package org.simpleframework.xml.stream;

import org.w3c.dom.Document;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;

class DocumentReader implements EventReader {
  private static final String RESERVED = "xml";
  
  private EventNode peek;
  
  private NodeExtractor queue;
  
  private NodeStack stack;
  
  public DocumentReader(Document paramDocument) {
    this.queue = new NodeExtractor(paramDocument);
    this.stack = new NodeStack();
    this.stack.push(paramDocument);
  }
  
  private DocumentReader$Entry attribute(Node paramNode) {
    return new DocumentReader$Entry(paramNode);
  }
  
  private DocumentReader$Start build(DocumentReader$Start paramDocumentReader$Start) {
    NamedNodeMap namedNodeMap = paramDocumentReader$Start.getAttributes();
    int j = namedNodeMap.getLength();
    for (int i = 0; i < j; i++) {
      DocumentReader$Entry documentReader$Entry = attribute(namedNodeMap.item(i));
      if (!documentReader$Entry.isReserved())
        paramDocumentReader$Start.add(documentReader$Entry); 
    } 
    return paramDocumentReader$Start;
  }
  
  private EventNode convert(Node paramNode) {
    if (paramNode.getNodeType() == 1) {
      if (paramNode != null)
        this.stack.push(paramNode); 
      return start(paramNode);
    } 
    return text(paramNode);
  }
  
  private DocumentReader$End end() {
    return new DocumentReader$End(null);
  }
  
  private EventNode read() {
    Node node = this.queue.peek();
    return (node == null) ? end() : read(node);
  }
  
  private EventNode read(Node paramNode) {
    Node node1 = paramNode.getParentNode();
    Node node2 = this.stack.top();
    if (node1 != node2) {
      if (node2 != null)
        this.stack.pop(); 
      return end();
    } 
    if (paramNode != null)
      this.queue.poll(); 
    return convert(paramNode);
  }
  
  private DocumentReader$Start start(Node paramNode) {
    DocumentReader$Start documentReader$Start2 = new DocumentReader$Start(paramNode);
    DocumentReader$Start documentReader$Start1 = documentReader$Start2;
    if (documentReader$Start2.isEmpty())
      documentReader$Start1 = build(documentReader$Start2); 
    return documentReader$Start1;
  }
  
  private DocumentReader$Text text(Node paramNode) {
    return new DocumentReader$Text(paramNode);
  }
  
  public EventNode next() {
    EventNode eventNode = this.peek;
    if (eventNode == null)
      return read(); 
    this.peek = null;
    return eventNode;
  }
  
  public EventNode peek() {
    if (this.peek == null)
      this.peek = next(); 
    return this.peek;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\stream\DocumentReader.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */