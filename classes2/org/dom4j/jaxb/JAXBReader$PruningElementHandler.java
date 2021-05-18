package org.dom4j.jaxb;

import org.dom4j.ElementHandler;
import org.dom4j.ElementPath;

class JAXBReader$PruningElementHandler implements ElementHandler {
  public void onEnd(ElementPath paramElementPath) {
    paramElementPath.getCurrent().detach();
  }
  
  public void onStart(ElementPath paramElementPath) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\jaxb\JAXBReader$PruningElementHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */