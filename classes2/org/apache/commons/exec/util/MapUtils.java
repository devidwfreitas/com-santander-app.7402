package org.apache.commons.exec.util;

import java.util.HashMap;
import java.util.Map;

public class MapUtils {
  public static Map copy(Map<?, ?> paramMap) {
    if (paramMap == null)
      return null; 
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    hashMap.putAll(paramMap);
    return hashMap;
  }
  
  public static Map merge(Map paramMap1, Map paramMap2) {
    if (paramMap1 == null || paramMap1.size() == 0)
      return copy(paramMap2); 
    if (paramMap2 == null || paramMap2.size() == 0)
      return copy(paramMap1); 
    paramMap1 = copy(paramMap1);
    paramMap1.putAll(paramMap2);
    return paramMap1;
  }
  
  public static Map prefix(Map paramMap, String paramString) {
    if (paramMap == null)
      return null; 
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    for (Map.Entry entry : paramMap.entrySet()) {
      Object object = entry.getKey();
      entry = (Map.Entry)entry.getValue();
      hashMap.put(paramString + '.' + object.toString(), entry);
    } 
    return hashMap;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\exe\\util\MapUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */