package org.jaxen.javabean;

public class Element {
  private String name;
  
  private Object object;
  
  private Element parent;
  
  public Element(Element paramElement, String paramString, Object paramObject) {
    this.parent = paramElement;
    this.name = paramString;
    this.object = paramObject;
  }
  
  public String getName() {
    return this.name;
  }
  
  public Object getObject() {
    return this.object;
  }
  
  public Element getParent() {
    return this.parent;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\javabean\Element.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */