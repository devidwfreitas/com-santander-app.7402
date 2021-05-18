package org.dom4j.io;

import org.dom4j.Element;
import org.dom4j.ElementHandler;
import org.dom4j.ElementPath;

class ElementStack implements ElementPath {
  private DispatchHandler handler = null;
  
  protected int lastElementIndex = -1;
  
  protected Element[] stack;
  
  public ElementStack() {
    this(50);
  }
  
  public ElementStack(int paramInt) {
    this.stack = new Element[paramInt];
  }
  
  private String getHandlerPath(String paramString) {
    if (this.handler == null)
      setDispatchHandler(new DispatchHandler()); 
    return paramString.startsWith("/") ? paramString : (getPath().equals("/") ? (getPath() + paramString) : (getPath() + "/" + paramString));
  }
  
  public void addHandler(String paramString, ElementHandler paramElementHandler) {
    this.handler.addHandler(getHandlerPath(paramString), paramElementHandler);
  }
  
  public void clear() {
    this.lastElementIndex = -1;
  }
  
  public boolean containsHandler(String paramString) {
    return this.handler.containsHandler(paramString);
  }
  
  public Element getCurrent() {
    return peekElement();
  }
  
  public DispatchHandler getDispatchHandler() {
    return this.handler;
  }
  
  public Element getElement(int paramInt) {
    try {
      return this.stack[paramInt];
    } catch (ArrayIndexOutOfBoundsException arrayIndexOutOfBoundsException) {
      return null;
    } 
  }
  
  public String getPath() {
    if (this.handler == null)
      setDispatchHandler(new DispatchHandler()); 
    return this.handler.getPath();
  }
  
  public Element peekElement() {
    return (this.lastElementIndex < 0) ? null : this.stack[this.lastElementIndex];
  }
  
  public Element popElement() {
    if (this.lastElementIndex < 0)
      return null; 
    Element[] arrayOfElement = this.stack;
    int i = this.lastElementIndex;
    this.lastElementIndex = i - 1;
    return arrayOfElement[i];
  }
  
  public void pushElement(Element paramElement) {
    int i = this.stack.length;
    int j = this.lastElementIndex + 1;
    this.lastElementIndex = j;
    if (j >= i)
      reallocate(i * 2); 
    this.stack[this.lastElementIndex] = paramElement;
  }
  
  protected void reallocate(int paramInt) {
    Element[] arrayOfElement = this.stack;
    this.stack = new Element[paramInt];
    System.arraycopy(arrayOfElement, 0, this.stack, 0, arrayOfElement.length);
  }
  
  public void removeHandler(String paramString) {
    this.handler.removeHandler(getHandlerPath(paramString));
  }
  
  public void setDispatchHandler(DispatchHandler paramDispatchHandler) {
    this.handler = paramDispatchHandler;
  }
  
  public int size() {
    return this.lastElementIndex + 1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\io\ElementStack.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */