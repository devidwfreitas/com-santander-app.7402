package org.simpleframework.xml.core;

import java.util.ArrayList;

class SignatureBuilder$ParameterTable extends ArrayList<SignatureBuilder$ParameterList> {
  private int height() {
    int i = 0;
    if (width() > 0)
      i = get(0).size(); 
    return i;
  }
  
  private int width() {
    return size();
  }
  
  public Parameter get(int paramInt1, int paramInt2) {
    return get(paramInt1).get(paramInt2);
  }
  
  public SignatureBuilder$ParameterList get(int paramInt) {
    for (int i = size(); i <= paramInt; i++)
      add(new SignatureBuilder$ParameterList()); 
    return super.get(paramInt);
  }
  
  public void insert(Parameter paramParameter, int paramInt) {
    SignatureBuilder$ParameterList signatureBuilder$ParameterList = get(paramInt);
    if (signatureBuilder$ParameterList != null)
      signatureBuilder$ParameterList.add(paramParameter); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\SignatureBuilder$ParameterTable.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */