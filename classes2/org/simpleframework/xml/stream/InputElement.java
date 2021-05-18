package org.simpleframework.xml.stream;

class InputElement implements InputNode {
  private final InputNodeMap map;
  
  private final EventNode node;
  
  private final InputNode parent;
  
  private final NodeReader reader;
  
  public InputElement(InputNode paramInputNode, NodeReader paramNodeReader, EventNode paramEventNode) {
    this.map = new InputNodeMap(this, paramEventNode);
    this.reader = paramNodeReader;
    this.parent = paramInputNode;
    this.node = paramEventNode;
  }
  
  public InputNode getAttribute(String paramString) {
    return this.map.get(paramString);
  }
  
  public NodeMap<InputNode> getAttributes() {
    return this.map;
  }
  
  public String getName() {
    return this.node.getName();
  }
  
  public InputNode getNext() {
    return this.reader.readElement(this);
  }
  
  public InputNode getNext(String paramString) {
    return this.reader.readElement(this, paramString);
  }
  
  public InputNode getParent() {
    return this.parent;
  }
  
  public Position getPosition() {
    return new InputPosition(this.node);
  }
  
  public String getPrefix() {
    return this.node.getPrefix();
  }
  
  public String getReference() {
    return this.node.getReference();
  }
  
  public Object getSource() {
    return this.node.getSource();
  }
  
  public String getValue() {
    return this.reader.readValue(this);
  }
  
  public boolean isElement() {
    return true;
  }
  
  public boolean isEmpty() {
    return !this.map.isEmpty() ? false : this.reader.isEmpty(this);
  }
  
  public boolean isRoot() {
    return this.reader.isRoot(this);
  }
  
  public void skip() {
    this.reader.skipElement(this);
  }
  
  public String toString() {
    return String.format("element %s", new Object[] { getName() });
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\stream\InputElement.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */