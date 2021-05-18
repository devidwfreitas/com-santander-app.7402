package br.com.santander.dynamicauth.models;

import java.io.Serializable;
import org.simpleframework.xml.Root;
import org.simpleframework.xml.Text;

@Root(name = "item")
public class OSGEntryValueItemModel implements Serializable {
  @Text(required = false)
  private String item;
  
  public OSGEntryValueItemModel() {}
  
  public OSGEntryValueItemModel(String paramString) {
    this.item = paramString;
  }
  
  public String getItem() {
    return this.item;
  }
  
  public void setItem(String paramString) {
    this.item = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\dynamicauth\models\OSGEntryValueItemModel.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */