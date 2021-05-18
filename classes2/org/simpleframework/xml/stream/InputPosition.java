package org.simpleframework.xml.stream;

class InputPosition implements Position {
  private EventNode source;
  
  public InputPosition(EventNode paramEventNode) {
    this.source = paramEventNode;
  }
  
  public int getLine() {
    return this.source.getLine();
  }
  
  public String toString() {
    return String.format("line %s", new Object[] { Integer.valueOf(getLine()) });
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\stream\InputPosition.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */