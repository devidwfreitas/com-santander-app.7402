package org.simpleframework.xml.stream;

import java.util.Iterator;
import javax.xml.stream.XMLEventReader;
import javax.xml.stream.events.Attribute;
import javax.xml.stream.events.XMLEvent;

class StreamReader implements EventReader {
  private EventNode peek;
  
  private XMLEventReader reader;
  
  public StreamReader(XMLEventReader paramXMLEventReader) {
    this.reader = paramXMLEventReader;
  }
  
  private StreamReader$Entry attribute(Attribute paramAttribute) {
    return new StreamReader$Entry(paramAttribute);
  }
  
  private StreamReader$Start build(StreamReader$Start paramStreamReader$Start) {
    Iterator<Attribute> iterator = paramStreamReader$Start.getAttributes();
    while (iterator.hasNext()) {
      StreamReader$Entry streamReader$Entry = attribute(iterator.next());
      if (!streamReader$Entry.isReserved())
        paramStreamReader$Start.add(streamReader$Entry); 
    } 
    return paramStreamReader$Start;
  }
  
  private StreamReader$End end() {
    return new StreamReader$End(null);
  }
  
  private EventNode read() {
    XMLEvent xMLEvent = this.reader.nextEvent();
    return !xMLEvent.isEndDocument() ? (xMLEvent.isStartElement() ? start(xMLEvent) : (xMLEvent.isCharacters() ? text(xMLEvent) : (xMLEvent.isEndElement() ? end() : read()))) : null;
  }
  
  private StreamReader$Start start(XMLEvent paramXMLEvent) {
    StreamReader$Start streamReader$Start2 = new StreamReader$Start(paramXMLEvent);
    StreamReader$Start streamReader$Start1 = streamReader$Start2;
    if (streamReader$Start2.isEmpty())
      streamReader$Start1 = build(streamReader$Start2); 
    return streamReader$Start1;
  }
  
  private StreamReader$Text text(XMLEvent paramXMLEvent) {
    return new StreamReader$Text(paramXMLEvent);
  }
  
  public EventNode next() {
    EventNode eventNode = this.peek;
    if (eventNode == null)
      return read(); 
    this.peek = null;
    return eventNode;
  }
  
  public EventNode peek() {
    if (this.peek == null)
      this.peek = next(); 
    return this.peek;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\stream\StreamReader.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */