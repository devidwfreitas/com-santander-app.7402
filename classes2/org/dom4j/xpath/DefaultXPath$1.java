package org.dom4j.xpath;

import java.util.Comparator;
import java.util.Map;

class DefaultXPath$1 implements Comparator {
  public int compare(Object paramObject1, Object paramObject2) {
    paramObject1 = sortValues.get(paramObject1);
    paramObject2 = sortValues.get(paramObject2);
    return (paramObject1 == paramObject2) ? 0 : ((paramObject1 instanceof Comparable) ? ((Comparable<Object>)paramObject1).compareTo(paramObject2) : ((paramObject1 == null) ? 1 : ((paramObject2 == null) ? -1 : (paramObject1.equals(paramObject2) ? 0 : -1))));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\xpath\DefaultXPath$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */