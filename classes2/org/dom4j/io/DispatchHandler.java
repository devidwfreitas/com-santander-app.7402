package org.dom4j.io;

import java.util.ArrayList;
import java.util.HashMap;
import org.dom4j.Element;
import org.dom4j.ElementHandler;
import org.dom4j.ElementPath;

class DispatchHandler implements ElementHandler {
  private boolean atRoot = true;
  
  private ElementHandler defaultHandler;
  
  private ArrayList handlerStack = new ArrayList();
  
  private HashMap handlers = new HashMap<Object, Object>();
  
  private String path = "/";
  
  private ArrayList pathStack = new ArrayList();
  
  public void addHandler(String paramString, ElementHandler paramElementHandler) {
    this.handlers.put(paramString, paramElementHandler);
  }
  
  public boolean containsHandler(String paramString) {
    return this.handlers.containsKey(paramString);
  }
  
  public int getActiveHandlerCount() {
    return this.handlerStack.size();
  }
  
  public ElementHandler getHandler(String paramString) {
    return (ElementHandler)this.handlers.get(paramString);
  }
  
  public String getPath() {
    return this.path;
  }
  
  public void onEnd(ElementPath paramElementPath) {
    if (this.handlers != null && this.handlers.containsKey(this.path)) {
      ElementHandler elementHandler = (ElementHandler)this.handlers.get(this.path);
      this.handlerStack.remove(this.handlerStack.size() - 1);
      elementHandler.onEnd(paramElementPath);
    } else if (this.handlerStack.isEmpty() && this.defaultHandler != null) {
      this.defaultHandler.onEnd(paramElementPath);
    } 
    this.path = this.pathStack.remove(this.pathStack.size() - 1);
    if (this.pathStack.size() == 0)
      this.atRoot = true; 
  }
  
  public void onStart(ElementPath paramElementPath) {
    Element element = paramElementPath.getCurrent();
    this.pathStack.add(this.path);
    if (this.atRoot) {
      this.path += element.getName();
      this.atRoot = false;
    } else {
      this.path += "/" + element.getName();
    } 
    if (this.handlers != null && this.handlers.containsKey(this.path)) {
      ElementHandler elementHandler = (ElementHandler)this.handlers.get(this.path);
      this.handlerStack.add(elementHandler);
      elementHandler.onStart(paramElementPath);
      return;
    } 
    if (this.handlerStack.isEmpty() && this.defaultHandler != null) {
      this.defaultHandler.onStart(paramElementPath);
      return;
    } 
  }
  
  public ElementHandler removeHandler(String paramString) {
    return (ElementHandler)this.handlers.remove(paramString);
  }
  
  public void resetHandlers() {
    this.atRoot = true;
    this.path = "/";
    this.pathStack.clear();
    this.handlerStack.clear();
    this.handlers.clear();
    this.defaultHandler = null;
  }
  
  public void setDefaultHandler(ElementHandler paramElementHandler) {
    this.defaultHandler = paramElementHandler;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\io\DispatchHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */