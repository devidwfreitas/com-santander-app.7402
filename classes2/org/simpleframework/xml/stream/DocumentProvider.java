package org.simpleframework.xml.stream;

import java.io.InputStream;
import java.io.Reader;
import javax.xml.parsers.DocumentBuilderFactory;
import org.xml.sax.InputSource;

class DocumentProvider implements Provider {
  private final DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
  
  public DocumentProvider() {
    this.factory.setNamespaceAware(true);
  }
  
  private EventReader provide(InputSource paramInputSource) {
    return new DocumentReader(this.factory.newDocumentBuilder().parse(paramInputSource));
  }
  
  public EventReader provide(InputStream paramInputStream) {
    return provide(new InputSource(paramInputStream));
  }
  
  public EventReader provide(Reader paramReader) {
    return provide(new InputSource(paramReader));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\stream\DocumentProvider.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */