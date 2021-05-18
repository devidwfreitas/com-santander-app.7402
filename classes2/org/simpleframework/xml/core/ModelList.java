package org.simpleframework.xml.core;

import java.util.ArrayList;
import java.util.Iterator;

class ModelList extends ArrayList<Model> {
  public ModelList build() {
    ModelList modelList = new ModelList();
    Iterator<Model> iterator = iterator();
    while (iterator.hasNext())
      modelList.register(iterator.next()); 
    return modelList;
  }
  
  public boolean isEmpty() {
    for (Model model : this) {
      if (model != null && !model.isEmpty())
        return false; 
    } 
    return true;
  }
  
  public Model lookup(int paramInt) {
    return (paramInt <= size()) ? get(paramInt - 1) : null;
  }
  
  public void register(Model paramModel) {
    int j = paramModel.getIndex();
    int k = size();
    for (int i = 0; i < j; i++) {
      if (i >= k)
        add(null); 
      if (i == j - 1)
        set(j - 1, paramModel); 
    } 
  }
  
  public Model take() {
    while (!isEmpty()) {
      Model model = remove(0);
      if (!model.isEmpty())
        return model; 
    } 
    return null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\ModelList.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */