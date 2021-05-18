package com.santander.app.emprestimo.creditopessoal.domain;

import eks;
import java.util.List;

public class ConsignadoRequiredData {
  @eks(a = "requiredFields")
  private List<ConsignadoRequiredField> requiredFields = null;
  
  public List<ConsignadoRequiredField> getRequiredFields() {
    return this.requiredFields;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\emprestimo\creditopessoal\domain\ConsignadoRequiredData.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */