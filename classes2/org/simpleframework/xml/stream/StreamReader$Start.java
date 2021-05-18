package org.simpleframework.xml.stream;

import java.util.Iterator;
import javax.xml.stream.Location;
import javax.xml.stream.events.Attribute;
import javax.xml.stream.events.StartElement;
import javax.xml.stream.events.XMLEvent;

class StreamReader$Start extends EventElement {
  private final StartElement element;
  
  private final Location location;
  
  public StreamReader$Start(XMLEvent paramXMLEvent) {
    this.element = paramXMLEvent.asStartElement();
    this.location = paramXMLEvent.getLocation();
  }
  
  public Iterator<Attribute> getAttributes() {
    return this.element.getAttributes();
  }
  
  public int getLine() {
    return this.location.getLineNumber();
  }
  
  public String getName() {
    return this.element.getName().getLocalPart();
  }
  
  public String getPrefix() {
    return this.element.getName().getPrefix();
  }
  
  public String getReference() {
    return this.element.getName().getNamespaceURI();
  }
  
  public Object getSource() {
    return this.element;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\stream\StreamReader$Start.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */