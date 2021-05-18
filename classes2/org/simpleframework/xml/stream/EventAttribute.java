package org.simpleframework.xml.stream;

abstract class EventAttribute implements Attribute {
  public String getPrefix() {
    return null;
  }
  
  public String getReference() {
    return null;
  }
  
  public Object getSource() {
    return null;
  }
  
  public boolean isReserved() {
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\stream\EventAttribute.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */