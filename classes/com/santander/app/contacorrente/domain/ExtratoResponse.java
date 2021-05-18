package com.santander.app.contacorrente.domain;

import eks;
import gvw;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ExtratoResponse implements ExtratoContract {
  @eks(a = "altairWarning")
  protected List<ExtratoResponse$AltairWarning> altairWarning;
  
  @eks(a = "entry")
  protected List<gvw> entryList;
  
  @eks(a = "checkingaccountstatements")
  protected List<ExtratoResponse$Lancamento> lancamentoList;
  
  public gvw getEntry() {
    return (this.entryList == null || this.entryList.isEmpty()) ? null : this.entryList.get(0);
  }
  
  public List<LancamentoContract> getLancamentoList() {
    ArrayList<ExtratoResponse$Lancamento> arrayList = new ArrayList();
    if (this.lancamentoList != null)
      arrayList.addAll(this.lancamentoList); 
    return (List)arrayList;
  }
  
  public boolean hasMorePages() {
    try {
      Iterator<ExtratoResponse$AltairWarning> iterator = this.altairWarning.iterator();
      while (iterator.hasNext()) {
        boolean bool = ((ExtratoResponse$AltairWarning)iterator.next()).warningCode.equalsIgnoreCase("UYA8001");
        if (bool)
          return true; 
      } 
      return false;
    } catch (Exception exception) {
      return false;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\contacorrente\domain\ExtratoResponse.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */