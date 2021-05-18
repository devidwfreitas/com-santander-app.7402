package org.dom4j.io;

import org.dom4j.Element;
import org.dom4j.ElementHandler;

class PruningElementStack extends ElementStack {
  private ElementHandler elementHandler;
  
  private int matchingElementIndex;
  
  private String[] path;
  
  public PruningElementStack(String[] paramArrayOfString, ElementHandler paramElementHandler) {
    this.path = paramArrayOfString;
    this.elementHandler = paramElementHandler;
    checkPath();
  }
  
  public PruningElementStack(String[] paramArrayOfString, ElementHandler paramElementHandler, int paramInt) {
    super(paramInt);
    this.path = paramArrayOfString;
    this.elementHandler = paramElementHandler;
    checkPath();
  }
  
  private void checkPath() {
    if (this.path.length < 2)
      throw new RuntimeException("Invalid path of length: " + this.path.length + " it must be greater than 2"); 
    this.matchingElementIndex = this.path.length - 2;
  }
  
  protected void pathMatches(Element paramElement1, Element paramElement2) {
    this.elementHandler.onEnd(this);
    paramElement1.remove(paramElement2);
  }
  
  public Element popElement() {
    Element element1 = null;
    Element element2 = super.popElement();
    if (this.lastElementIndex == this.matchingElementIndex && this.lastElementIndex >= 0 && validElement(element2, this.lastElementIndex + 1)) {
      int i = 0;
      Element element = null;
      while (true) {
        if (i <= this.lastElementIndex) {
          element = this.stack[i];
          if (!validElement(element, i)) {
            element = element1;
          } else {
            i++;
            continue;
          } 
        } 
        if (element != null)
          pathMatches(element, element2); 
        return element2;
      } 
    } 
    return element2;
  }
  
  protected boolean validElement(Element paramElement, int paramInt) {
    String str2 = this.path[paramInt];
    String str1 = paramElement.getName();
    return (str2 == str1) ? true : ((str2 != null && str1 != null) ? str2.equals(str1) : false);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\io\PruningElementStack.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */