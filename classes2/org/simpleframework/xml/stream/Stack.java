package org.simpleframework.xml.stream;

import java.util.ArrayList;

class Stack<T> extends ArrayList<T> {
  public Stack(int paramInt) {
    super(paramInt);
  }
  
  public T bottom() {
    return (size() <= 0) ? null : get(0);
  }
  
  public T pop() {
    int i = size();
    return (i <= 0) ? null : remove(i - 1);
  }
  
  public T push(T paramT) {
    add(paramT);
    return paramT;
  }
  
  public T top() {
    int i = size();
    return (i <= 0) ? null : get(i - 1);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\stream\Stack.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */