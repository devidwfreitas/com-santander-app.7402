package org.simpleframework.xml.core;

import java.util.Iterator;
import java.util.LinkedHashMap;

class ModelMap extends LinkedHashMap<String, ModelList> implements Iterable<ModelList> {
  private final Detail detail;
  
  public ModelMap(Detail paramDetail) {
    this.detail = paramDetail;
  }
  
  public ModelMap getModels() {
    ModelMap modelMap = new ModelMap(this.detail);
    for (String str : keySet()) {
      ModelList modelList2 = get(str);
      ModelList modelList1 = modelList2;
      if (modelList2 != null)
        modelList1 = modelList2.build(); 
      if (modelMap.containsKey(str))
        throw new PathException("Path with name '%s' is a duplicate in %s ", new Object[] { str, this.detail }); 
      modelMap.put(str, modelList1);
    } 
    return modelMap;
  }
  
  public Iterator<ModelList> iterator() {
    return values().iterator();
  }
  
  public Model lookup(String paramString, int paramInt) {
    ModelList modelList = get(paramString);
    return (modelList != null) ? modelList.lookup(paramInt) : null;
  }
  
  public void register(String paramString, Model paramModel) {
    ModelList modelList2 = get(paramString);
    ModelList modelList1 = modelList2;
    if (modelList2 == null) {
      modelList1 = new ModelList();
      put(paramString, modelList1);
    } 
    modelList1.register(paramModel);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\ModelMap.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */