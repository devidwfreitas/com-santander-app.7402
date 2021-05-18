package com.santander.app.components.model;

import java.io.Serializable;
import java.util.List;

public class ListValueString implements Serializable {
  private List<String> item;
  
  public List<String> getItem() {
    return this.item;
  }
  
  public void setItem(List<String> paramList) {
    this.item = paramList;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\components\model\ListValueString.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */