package org.simpleframework.xml.util;

import java.util.Iterator;

class Resolver$Stack$Sequence implements Iterator<M> {
  private int cursor;
  
  public Resolver$Stack$Sequence() {
    this.cursor = paramResolver$Stack.size();
  }
  
  public boolean hasNext() {
    return (this.cursor > 0);
  }
  
  public M next() {
    if (hasNext()) {
      Resolver$Stack resolver$Stack = Resolver$Stack.this;
      int i = this.cursor - 1;
      this.cursor = i;
      return resolver$Stack.get(i);
    } 
    return null;
  }
  
  public void remove() {
    Resolver$Stack.this.purge(this.cursor);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xm\\util\Resolver$Stack$Sequence.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */