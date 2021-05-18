package org.dom4j.util;

import org.dom4j.Attribute;
import org.dom4j.Element;
import org.dom4j.QName;

public class AttributeHelper {
  protected static boolean booleanValue(Attribute paramAttribute) {
    if (paramAttribute == null)
      return false; 
    Object object = paramAttribute.getData();
    return (object == null) ? false : ((object instanceof Boolean) ? ((Boolean)object).booleanValue() : "true".equalsIgnoreCase(object.toString()));
  }
  
  public static boolean booleanValue(Element paramElement, String paramString) {
    return booleanValue(paramElement.attribute(paramString));
  }
  
  public static boolean booleanValue(Element paramElement, QName paramQName) {
    return booleanValue(paramElement.attribute(paramQName));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4\\util\AttributeHelper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */