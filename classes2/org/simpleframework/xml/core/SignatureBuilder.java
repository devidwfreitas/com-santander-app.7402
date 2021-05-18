package org.simpleframework.xml.core;

import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.List;

class SignatureBuilder {
  private final Constructor factory;
  
  private final SignatureBuilder$ParameterTable table = new SignatureBuilder$ParameterTable();
  
  public SignatureBuilder(Constructor paramConstructor) {
    this.factory = paramConstructor;
  }
  
  private List<Signature> build(SignatureBuilder$ParameterTable paramSignatureBuilder$ParameterTable) {
    if (this.table.isEmpty())
      return create(); 
    build(paramSignatureBuilder$ParameterTable, 0);
    return create(paramSignatureBuilder$ParameterTable);
  }
  
  private void build(SignatureBuilder$ParameterTable paramSignatureBuilder$ParameterTable, int paramInt) {
    build(paramSignatureBuilder$ParameterTable, new SignatureBuilder$ParameterList(), paramInt);
  }
  
  private void build(SignatureBuilder$ParameterTable paramSignatureBuilder$ParameterTable, SignatureBuilder$ParameterList paramSignatureBuilder$ParameterList, int paramInt) {
    SignatureBuilder$ParameterList signatureBuilder$ParameterList = this.table.get(paramInt);
    int i = signatureBuilder$ParameterList.size();
    if (SignatureBuilder$ParameterTable.access$000(this.table) - 1 > paramInt) {
      int j;
      for (j = 0; j < i; j++) {
        SignatureBuilder$ParameterList signatureBuilder$ParameterList1 = new SignatureBuilder$ParameterList(paramSignatureBuilder$ParameterList);
        if (paramSignatureBuilder$ParameterList != null) {
          signatureBuilder$ParameterList1.add(signatureBuilder$ParameterList.get(j));
          build(paramSignatureBuilder$ParameterTable, signatureBuilder$ParameterList1, paramInt + 1);
        } 
      } 
    } else {
      populate(paramSignatureBuilder$ParameterTable, paramSignatureBuilder$ParameterList, paramInt);
    } 
  }
  
  private List<Signature> create() {
    ArrayList<Signature> arrayList = new ArrayList();
    Signature signature = new Signature(this.factory);
    if (isValid())
      arrayList.add(signature); 
    return arrayList;
  }
  
  private List<Signature> create(SignatureBuilder$ParameterTable paramSignatureBuilder$ParameterTable) {
    ArrayList<Signature> arrayList = new ArrayList();
    int j = SignatureBuilder$ParameterTable.access$100(paramSignatureBuilder$ParameterTable);
    int k = SignatureBuilder$ParameterTable.access$000(paramSignatureBuilder$ParameterTable);
    for (int i = 0; i < j; i++) {
      Signature signature = new Signature(this.factory);
      for (int m = 0; m < k; m++) {
        Parameter parameter = paramSignatureBuilder$ParameterTable.get(m, i);
        String str = parameter.getPath();
        if (signature.contains(parameter.getKey()))
          throw new ConstructorException("Parameter '%s' is a duplicate in %s", new Object[] { str, this.factory }); 
        signature.add(parameter);
      } 
      arrayList.add(signature);
    } 
    return arrayList;
  }
  
  private void populate(SignatureBuilder$ParameterTable paramSignatureBuilder$ParameterTable, SignatureBuilder$ParameterList paramSignatureBuilder$ParameterList, int paramInt) {
    SignatureBuilder$ParameterList signatureBuilder$ParameterList = this.table.get(paramInt);
    int j = paramSignatureBuilder$ParameterList.size();
    int k = signatureBuilder$ParameterList.size();
    int i;
    for (i = 0; i < k; i++) {
      int m;
      for (m = 0; m < j; m++)
        paramSignatureBuilder$ParameterTable.get(m).add(paramSignatureBuilder$ParameterList.get(m)); 
      paramSignatureBuilder$ParameterTable.get(paramInt).add(signatureBuilder$ParameterList.get(i));
    } 
  }
  
  public List<Signature> build() {
    return build(new SignatureBuilder$ParameterTable());
  }
  
  public void insert(Parameter paramParameter, int paramInt) {
    this.table.insert(paramParameter, paramInt);
  }
  
  public boolean isValid() {
    Class[] arrayOfClass = this.factory.getParameterTypes();
    int i = SignatureBuilder$ParameterTable.access$000(this.table);
    return (arrayOfClass.length == i);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\SignatureBuilder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */