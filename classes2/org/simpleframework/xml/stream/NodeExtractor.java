package org.simpleframework.xml.stream;

import java.util.LinkedList;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

class NodeExtractor extends LinkedList<Node> {
  public NodeExtractor(Document paramDocument) {
    extract(paramDocument);
  }
  
  private void extract(Document paramDocument) {
    Element element = paramDocument.getDocumentElement();
    if (element != null) {
      offer(element);
      extract(element);
    } 
  }
  
  private void extract(Node paramNode) {
    NodeList nodeList = paramNode.getChildNodes();
    int j = nodeList.getLength();
    for (int i = 0; i < j; i++) {
      Node node = nodeList.item(i);
      if (node.getNodeType() != 8) {
        offer(node);
        extract(node);
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\stream\NodeExtractor.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */