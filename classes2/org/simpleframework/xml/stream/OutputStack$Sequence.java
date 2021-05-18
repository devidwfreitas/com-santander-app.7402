package org.simpleframework.xml.stream;

import java.util.Iterator;

class OutputStack$Sequence implements Iterator<OutputNode> {
  private int cursor;
  
  public OutputStack$Sequence() {
    this.cursor = paramOutputStack.size();
  }
  
  public boolean hasNext() {
    return (this.cursor > 0);
  }
  
  public OutputNode next() {
    if (hasNext()) {
      OutputStack outputStack = OutputStack.this;
      int i = this.cursor - 1;
      this.cursor = i;
      return outputStack.get(i);
    } 
    return null;
  }
  
  public void remove() {
    OutputStack.this.purge(this.cursor);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\stream\OutputStack$Sequence.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */