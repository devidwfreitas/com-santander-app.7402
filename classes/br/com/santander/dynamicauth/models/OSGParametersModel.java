package br.com.santander.dynamicauth.models;

import java.io.Serializable;
import java.util.List;
import org.simpleframework.xml.ElementList;

public class OSGParametersModel implements Serializable {
  @ElementList(inline = true, name = "entry", required = false)
  private List<OSGEntryModel> entry;
  
  public OSGParametersModel() {}
  
  public OSGParametersModel(List<OSGEntryModel> paramList) {
    this.entry = paramList;
  }
  
  public List<OSGEntryModel> getEntryList() {
    return this.entry;
  }
  
  public void setEntryList(List<OSGEntryModel> paramList) {
    this.entry = paramList;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\dynamicauth\models\OSGParametersModel.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */