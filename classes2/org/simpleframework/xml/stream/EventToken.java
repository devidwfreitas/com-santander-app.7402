package org.simpleframework.xml.stream;

import java.util.Iterator;

abstract class EventToken implements EventNode {
  public int getLine() {
    return -1;
  }
  
  public String getName() {
    return null;
  }
  
  public String getPrefix() {
    return null;
  }
  
  public String getReference() {
    return null;
  }
  
  public Object getSource() {
    return null;
  }
  
  public String getValue() {
    return null;
  }
  
  public boolean isEnd() {
    return false;
  }
  
  public boolean isStart() {
    return false;
  }
  
  public boolean isText() {
    return false;
  }
  
  public Iterator<Attribute> iterator() {
    return null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\stream\EventToken.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */