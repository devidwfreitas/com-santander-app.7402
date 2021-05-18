package com.santander.app.common;

import br.com.santander.dynamicauth.models.OSGEntryModel;
import br.com.santander.dynamicauth.models.OSGEntryValueItemModel;
import br.com.santander.dynamicauth.models.OSGParametersModel;
import com.santander.app.components.model.ListValueString;
import ekq;
import eks;
import gkt;
import gku;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class OSGModel extends gkt {
  @ekq
  @eks(a = "fields")
  private ArrayList<gku> fields;
  
  @ekq
  @eks(a = "osgData")
  private HashMap<String, ListValueString> osgData;
  
  public static OSGParametersModel getOSGParametersModel(HashMap<String, ListValueString> paramHashMap) {
    ArrayList<OSGEntryModel> arrayList = new ArrayList();
    for (Map.Entry<String, ListValueString> entry : paramHashMap.entrySet()) {
      ArrayList<OSGEntryValueItemModel> arrayList1 = new ArrayList();
      Iterator<String> iterator = ((ListValueString)entry.getValue()).getItem().iterator();
      while (iterator.hasNext())
        arrayList1.add(new OSGEntryValueItemModel(iterator.next())); 
      arrayList.add(new OSGEntryModel((String)entry.getKey(), ((OSGEntryValueItemModel)arrayList1.get(0)).getItem()));
    } 
    return new OSGParametersModel(arrayList);
  }
  
  public ArrayList<gku> getFields() {
    return this.fields;
  }
  
  public HashMap<String, ListValueString> getOsgData() {
    return this.osgData;
  }
  
  public void setFields(ArrayList<gku> paramArrayList) {
    this.fields = paramArrayList;
  }
  
  public void setOsgData(HashMap<String, ListValueString> paramHashMap) {
    this.osgData = paramHashMap;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\common\OSGModel.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */