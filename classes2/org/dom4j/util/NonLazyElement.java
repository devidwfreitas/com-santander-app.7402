package org.dom4j.util;

import org.dom4j.Namespace;
import org.dom4j.QName;
import org.dom4j.tree.BaseElement;

public class NonLazyElement extends BaseElement {
  public NonLazyElement(String paramString) {
    super(paramString);
  }
  
  public NonLazyElement(String paramString, Namespace paramNamespace) {
    super(paramString, paramNamespace);
  }
  
  public NonLazyElement(QName paramQName) {
    super(paramQName);
  }
  
  public NonLazyElement(QName paramQName, int paramInt) {
    super(paramQName);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4\\util\NonLazyElement.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */