package org.dom4j.io;

import org.dom4j.Element;
import org.dom4j.ElementHandler;
import org.dom4j.ElementPath;
import org.dom4j.Node;

class SAXModifyElementHandler implements ElementHandler {
  private ElementModifier elemModifier;
  
  private Element modifiedElement;
  
  public SAXModifyElementHandler(ElementModifier paramElementModifier) {
    this.elemModifier = paramElementModifier;
  }
  
  protected Element getModifiedElement() {
    return this.modifiedElement;
  }
  
  public void onEnd(ElementPath paramElementPath) {
    try {
      Element element1 = paramElementPath.getCurrent();
      Element element2 = element1.getParent();
      if (element2 != null) {
        Element element = (Element)element1.clone();
        this.modifiedElement = this.elemModifier.modifyElement(element);
        if (this.modifiedElement != null) {
          this.modifiedElement.setParent(element1.getParent());
          this.modifiedElement.setDocument(element1.getDocument());
          int i = element2.indexOf((Node)element1);
          element2.content().set(i, this.modifiedElement);
        } 
        element1.detach();
      } else if (element1.isRootElement()) {
        element2 = (Element)element1.clone();
        this.modifiedElement = this.elemModifier.modifyElement(element2);
        if (this.modifiedElement != null) {
          this.modifiedElement.setDocument(element1.getDocument());
          element1.getDocument().setRootElement(this.modifiedElement);
        } 
        element1.detach();
      } 
      if (paramElementPath instanceof ElementStack) {
        paramElementPath = paramElementPath;
        paramElementPath.popElement();
        paramElementPath.pushElement(this.modifiedElement);
        return;
      } 
    } catch (Exception exception) {
      throw new SAXModifyException(exception);
    } 
  }
  
  public void onStart(ElementPath paramElementPath) {
    this.modifiedElement = paramElementPath.getCurrent();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\io\SAXModifyElementHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */