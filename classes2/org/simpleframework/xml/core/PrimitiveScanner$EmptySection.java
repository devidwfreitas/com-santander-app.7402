package org.simpleframework.xml.core;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

class PrimitiveScanner$EmptySection implements Section {
  private final List<String> list = new LinkedList<String>();
  
  private final Scanner scanner;
  
  public PrimitiveScanner$EmptySection(Scanner paramScanner) {
    this.scanner = paramScanner;
  }
  
  public String getAttribute(String paramString) {
    return null;
  }
  
  public LabelMap getAttributes() {
    return new LabelMap(this.scanner);
  }
  
  public Label getElement(String paramString) {
    return null;
  }
  
  public LabelMap getElements() {
    return new LabelMap(this.scanner);
  }
  
  public String getName() {
    return null;
  }
  
  public String getPath(String paramString) {
    return null;
  }
  
  public String getPrefix() {
    return null;
  }
  
  public Section getSection(String paramString) {
    return null;
  }
  
  public Label getText() {
    return null;
  }
  
  public boolean isSection(String paramString) {
    return false;
  }
  
  public Iterator<String> iterator() {
    return this.list.iterator();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\PrimitiveScanner$EmptySection.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */