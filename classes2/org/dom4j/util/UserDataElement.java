package org.dom4j.util;

import org.dom4j.Element;
import org.dom4j.QName;
import org.dom4j.tree.AbstractNode;
import org.dom4j.tree.DefaultElement;

public class UserDataElement extends DefaultElement {
  private Object data;
  
  public UserDataElement(String paramString) {
    super(paramString);
  }
  
  public UserDataElement(QName paramQName) {
    super(paramQName);
  }
  
  public UserDataElement clone() {
    UserDataElement userDataElement = (UserDataElement)super.clone();
    if (userDataElement != this)
      userDataElement.data = getCopyOfUserData(); 
    return userDataElement;
  }
  
  protected Element createElement(String paramString) {
    Element element = getDocumentFactory().createElement(paramString);
    element.setData(getCopyOfUserData());
    return element;
  }
  
  protected Element createElement(QName paramQName) {
    Element element = getDocumentFactory().createElement(paramQName);
    element.setData(getCopyOfUserData());
    return element;
  }
  
  protected Object getCopyOfUserData() {
    return this.data;
  }
  
  public Object getData() {
    return this.data;
  }
  
  public void setData(Object paramObject) {
    this.data = paramObject;
  }
  
  public String toString() {
    return super.toString() + " userData: " + this.data;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4\\util\UserDataElement.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */