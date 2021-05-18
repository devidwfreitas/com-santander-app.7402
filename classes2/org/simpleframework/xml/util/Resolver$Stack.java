package org.simpleframework.xml.util;

import java.util.Iterator;
import java.util.LinkedList;

class Resolver$Stack extends LinkedList<M> {
  private Resolver$Stack() {}
  
  public void purge(int paramInt) {
    Resolver.this.cache.clear();
    remove(paramInt);
  }
  
  public void push(M paramM) {
    Resolver.this.cache.clear();
    addFirst(paramM);
  }
  
  public Iterator<M> sequence() {
    return new Resolver$Stack$Sequence(this);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xm\\util\Resolver$Stack.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */