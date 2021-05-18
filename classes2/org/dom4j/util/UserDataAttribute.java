package org.dom4j.util;

import org.dom4j.QName;
import org.dom4j.tree.DefaultAttribute;

public class UserDataAttribute extends DefaultAttribute {
  private Object data;
  
  public UserDataAttribute(QName paramQName) {
    super(paramQName);
  }
  
  public UserDataAttribute(QName paramQName, String paramString) {
    super(paramQName, paramString);
  }
  
  public Object getData() {
    return this.data;
  }
  
  public void setData(Object paramObject) {
    this.data = paramObject;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4\\util\UserDataAttribute.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */