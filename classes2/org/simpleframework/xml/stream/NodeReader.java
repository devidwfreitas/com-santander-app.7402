package org.simpleframework.xml.stream;

class NodeReader {
  private final EventReader reader;
  
  private final InputStack stack = new InputStack();
  
  private final StringBuilder text = new StringBuilder();
  
  public NodeReader(EventReader paramEventReader) {
    this.reader = paramEventReader;
  }
  
  private void fillText(InputNode paramInputNode) {
    EventNode eventNode = this.reader.peek();
    if (eventNode.isText()) {
      String str = eventNode.getValue();
      this.text.append(str);
    } 
  }
  
  private boolean isName(EventNode paramEventNode, String paramString) {
    String str = paramEventNode.getName();
    return (str == null) ? false : str.equals(paramString);
  }
  
  private String readBuffer(InputNode paramInputNode) {
    if (this.text.length() > 0) {
      String str = this.text.toString();
      this.text.setLength(0);
      return str;
    } 
    return null;
  }
  
  private InputNode readStart(InputNode paramInputNode, EventNode paramEventNode) {
    InputElement inputElement = new InputElement(paramInputNode, this, paramEventNode);
    if (this.text.length() > 0)
      this.text.setLength(0); 
    paramInputNode = inputElement;
    if (paramEventNode.isStart())
      paramInputNode = this.stack.push(inputElement); 
    return paramInputNode;
  }
  
  private String readText(InputNode paramInputNode) {
    for (EventNode eventNode = this.reader.peek(); this.stack.top() == paramInputNode && eventNode.isText(); eventNode = this.reader.peek()) {
      fillText(paramInputNode);
      this.reader.next();
    } 
    return readBuffer(paramInputNode);
  }
  
  public boolean isEmpty(InputNode paramInputNode) {
    return (this.stack.top() == paramInputNode && this.reader.peek().isEnd());
  }
  
  public boolean isRoot(InputNode paramInputNode) {
    return (this.stack.bottom() == paramInputNode);
  }
  
  public InputNode readElement(InputNode paramInputNode) {
    if (this.stack.isRelevant(paramInputNode))
      for (EventNode eventNode = this.reader.next();; eventNode = this.reader.next()) {
        if (eventNode != null) {
          if (eventNode.isEnd()) {
            if (this.stack.pop() != paramInputNode)
              continue; 
            return null;
          } 
          if (eventNode.isStart())
            return readStart(paramInputNode, eventNode); 
          continue;
        } 
        return null;
      }  
    return null;
  }
  
  public InputNode readElement(InputNode paramInputNode, String paramString) {
    if (this.stack.isRelevant(paramInputNode)) {
      EventNode eventNode = this.reader.peek();
      while (true) {
        if (eventNode != null) {
          if (eventNode.isText()) {
            fillText(paramInputNode);
          } else if (eventNode.isEnd()) {
            if (this.stack.top() != paramInputNode) {
              this.stack.pop();
            } else {
              return null;
            } 
          } else if (eventNode.isStart()) {
            return isName(eventNode, paramString) ? readElement(paramInputNode) : null;
          } 
          this.reader.next();
          eventNode = this.reader.peek();
          continue;
        } 
        return null;
      } 
    } 
    return null;
  }
  
  public InputNode readRoot() {
    InputNode inputNode = null;
    if (this.stack.isEmpty()) {
      InputNode inputNode1 = readElement(null);
      inputNode = inputNode1;
      if (inputNode1 == null)
        throw new NodeException("Document has no root element"); 
    } 
    return inputNode;
  }
  
  public String readValue(InputNode paramInputNode) {
    if (!this.stack.isRelevant(paramInputNode))
      return null; 
    if (this.text.length() <= 0 && this.reader.peek().isEnd()) {
      if (this.stack.top() != paramInputNode) {
        this.stack.pop();
        this.reader.next();
        return readText(paramInputNode);
      } 
      return null;
    } 
    return readText(paramInputNode);
  }
  
  public void skipElement(InputNode paramInputNode) {
    do {
    
    } while (readElement(paramInputNode) != null);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\stream\NodeReader.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */