package br.com.santander.dynamicauth.models;

import java.io.Serializable;
import java.util.List;
import org.simpleframework.xml.ElementList;

public class OSGEntryValueModel implements Serializable {
  @ElementList(inline = true, name = "item", required = false)
  private List<OSGEntryValueItemModel> items;
  
  public OSGEntryValueModel() {}
  
  public OSGEntryValueModel(List<OSGEntryValueItemModel> paramList) {
    this.items = paramList;
  }
  
  public List<OSGEntryValueItemModel> getItems() {
    return this.items;
  }
  
  public void setItem(List<OSGEntryValueItemModel> paramList) {
    this.items = paramList;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\dynamicauth\models\OSGEntryValueModel.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */