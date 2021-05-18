package br.com.santander.dynamicauth.models;

import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "entry")
public class OSGEntryModel implements Serializable {
  @Element(name = "key", required = false)
  private String key;
  
  @Element(name = "value", required = false)
  private String value;
  
  public OSGEntryModel() {}
  
  public OSGEntryModel(String paramString) {
    this.key = paramString;
  }
  
  public OSGEntryModel(String paramString1, String paramString2) {
    this.key = paramString1;
    this.value = paramString2;
  }
  
  public boolean equals(Object paramObject) {
    if (this == paramObject)
      return true; 
    if (paramObject == null || getClass() != paramObject.getClass())
      return false; 
    paramObject = paramObject;
    return this.key.equals(((OSGEntryModel)paramObject).key);
  }
  
  public int getIntKey() {
    return Integer.parseInt(getKey());
  }
  
  public String getKey() {
    return this.key;
  }
  
  public String getValue() {
    return this.value;
  }
  
  public int hashCode() {
    byte b;
    int i = 0;
    if (this.key != null) {
      b = this.key.hashCode();
    } else {
      b = 0;
    } 
    if (this.value != null)
      i = this.value.hashCode(); 
    return b * 31 + i;
  }
  
  public void setKey(String paramString) {
    this.key = paramString;
  }
  
  public void setValue(String paramString) {
    this.value = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\dynamicauth\models\OSGEntryModel.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */