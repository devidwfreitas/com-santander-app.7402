package org.simpleframework.xml.stream;

import java.io.InputStream;
import java.io.Reader;
import javax.xml.stream.XMLEventReader;
import javax.xml.stream.XMLInputFactory;

class StreamProvider implements Provider {
  private final XMLInputFactory factory = XMLInputFactory.newInstance();
  
  private EventReader provide(XMLEventReader paramXMLEventReader) {
    return new StreamReader(paramXMLEventReader);
  }
  
  public EventReader provide(InputStream paramInputStream) {
    return provide(this.factory.createXMLEventReader(paramInputStream));
  }
  
  public EventReader provide(Reader paramReader) {
    return provide(this.factory.createXMLEventReader(paramReader));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\stream\StreamProvider.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */