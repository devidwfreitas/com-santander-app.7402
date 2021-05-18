package org.dom4j.jaxb;

import javax.xml.bind.Element;
import org.dom4j.Element;
import org.dom4j.ElementHandler;
import org.dom4j.ElementPath;

class JAXBReader$UnmarshalElementHandler implements ElementHandler {
  private JAXBObjectHandler handler;
  
  private JAXBReader jaxbReader;
  
  public JAXBReader$UnmarshalElementHandler(JAXBReader paramJAXBReader2, JAXBObjectHandler paramJAXBObjectHandler) {
    this.jaxbReader = paramJAXBReader2;
    this.handler = paramJAXBObjectHandler;
  }
  
  public void onEnd(ElementPath paramElementPath) {
    try {
      Element element = paramElementPath.getCurrent();
      Element element1 = this.jaxbReader.unmarshal(element);
      if (this.jaxbReader.isPruneElements())
        element.detach(); 
      this.handler.handleObject(element1);
      return;
    } catch (Exception exception) {
      throw new JAXBRuntimeException(exception);
    } 
  }
  
  public void onStart(ElementPath paramElementPath) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\jaxb\JAXBReader$UnmarshalElementHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */