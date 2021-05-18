package org.dom4j.jaxb;

import java.io.StringReader;
import javax.xml.bind.Element;
import javax.xml.bind.JAXBContext;
import javax.xml.bind.Marshaller;
import javax.xml.bind.Unmarshaller;
import javax.xml.transform.stream.StreamSource;
import org.dom4j.Element;
import org.dom4j.dom.DOMDocument;
import org.w3c.dom.Node;

abstract class JAXBSupport {
  private ClassLoader classloader;
  
  private String contextPath;
  
  private JAXBContext jaxbContext;
  
  private Marshaller marshaller;
  
  private Unmarshaller unmarshaller;
  
  public JAXBSupport(String paramString) {
    this.contextPath = paramString;
  }
  
  public JAXBSupport(String paramString, ClassLoader paramClassLoader) {
    this.contextPath = paramString;
    this.classloader = paramClassLoader;
  }
  
  private JAXBContext getContext() {
    if (this.jaxbContext == null) {
      if (this.classloader == null) {
        this.jaxbContext = JAXBContext.newInstance(this.contextPath);
        return this.jaxbContext;
      } 
    } else {
      return this.jaxbContext;
    } 
    this.jaxbContext = JAXBContext.newInstance(this.contextPath, this.classloader);
    return this.jaxbContext;
  }
  
  private Marshaller getMarshaller() {
    if (this.marshaller == null)
      this.marshaller = getContext().createMarshaller(); 
    return this.marshaller;
  }
  
  private Unmarshaller getUnmarshaller() {
    if (this.unmarshaller == null)
      this.unmarshaller = getContext().createUnmarshaller(); 
    return this.unmarshaller;
  }
  
  protected Element marshal(Element paramElement) {
    DOMDocument dOMDocument = new DOMDocument();
    getMarshaller().marshal(paramElement, (Node)dOMDocument);
    return dOMDocument.getRootElement();
  }
  
  protected Element unmarshal(Element paramElement) {
    StreamSource streamSource = new StreamSource(new StringReader(paramElement.asXML()));
    return (Element)getUnmarshaller().unmarshal(streamSource);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\jaxb\JAXBSupport.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */