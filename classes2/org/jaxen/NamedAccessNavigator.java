package org.jaxen;

import java.util.Iterator;

public interface NamedAccessNavigator extends Navigator {
  Iterator getAttributeAxisIterator(Object paramObject, String paramString1, String paramString2, String paramString3);
  
  Iterator getChildAxisIterator(Object paramObject, String paramString1, String paramString2, String paramString3);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\NamedAccessNavigator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */