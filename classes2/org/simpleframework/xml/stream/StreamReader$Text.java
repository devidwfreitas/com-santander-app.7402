package org.simpleframework.xml.stream;

import javax.xml.stream.events.Characters;
import javax.xml.stream.events.XMLEvent;

class StreamReader$Text extends EventToken {
  private final Characters text;
  
  public StreamReader$Text(XMLEvent paramXMLEvent) {
    this.text = paramXMLEvent.asCharacters();
  }
  
  public Object getSource() {
    return this.text;
  }
  
  public String getValue() {
    return this.text.getData();
  }
  
  public boolean isText() {
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\stream\StreamReader$Text.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */