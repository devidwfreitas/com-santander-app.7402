package org.simpleframework.xml.stream;

import javax.xml.stream.events.Attribute;

class StreamReader$Entry extends EventAttribute {
  private final Attribute entry;
  
  public StreamReader$Entry(Attribute paramAttribute) {
    this.entry = paramAttribute;
  }
  
  public String getName() {
    return this.entry.getName().getLocalPart();
  }
  
  public String getPrefix() {
    return this.entry.getName().getPrefix();
  }
  
  public String getReference() {
    return this.entry.getName().getNamespaceURI();
  }
  
  public Object getSource() {
    return this.entry;
  }
  
  public String getValue() {
    return this.entry.getValue();
  }
  
  public boolean isReserved() {
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\stream\StreamReader$Entry.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */