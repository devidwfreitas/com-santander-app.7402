package org.simpleframework.xml.stream;

import java.util.ArrayList;

abstract class EventElement extends ArrayList<Attribute> implements EventNode {
  public int getLine() {
    return -1;
  }
  
  public String getValue() {
    return null;
  }
  
  public boolean isEnd() {
    return false;
  }
  
  public boolean isStart() {
    return true;
  }
  
  public boolean isText() {
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\stream\EventElement.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */