package com.santander.app.contacorrente.domain;

import java.util.List;

public interface ExtratoContract {
  List<LancamentoContract> getLancamentoList();
  
  boolean hasMorePages();
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\contacorrente\domain\ExtratoContract.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */