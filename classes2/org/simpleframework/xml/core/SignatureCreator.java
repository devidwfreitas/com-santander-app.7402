package org.simpleframework.xml.core;

import java.util.Iterator;
import java.util.List;

class SignatureCreator implements Creator {
  private final List<Parameter> list;
  
  private final Signature signature;
  
  private final Class type;
  
  public SignatureCreator(Signature paramSignature) {
    this.type = paramSignature.getType();
    this.list = paramSignature.getAll();
    this.signature = paramSignature;
  }
  
  private double getAdjustment(double paramDouble) {
    double d = this.list.size() / 1000.0D;
    return (paramDouble > 0.0D) ? (d + paramDouble / this.list.size()) : (paramDouble / this.list.size());
  }
  
  private double getPercentage(Criteria paramCriteria) {
    Iterator<Parameter> iterator = this.list.iterator();
    double d;
    for (d = 0.0D; iterator.hasNext(); d = 1.0D + d) {
      Parameter parameter = iterator.next();
      if (paramCriteria.get(parameter.getKey()) == null) {
        if (parameter.isRequired())
          return -1.0D; 
        if (parameter.isPrimitive())
          return -1.0D; 
        continue;
      } 
    } 
    return getAdjustment(d);
  }
  
  private Object getVariable(Criteria paramCriteria, int paramInt) {
    Variable variable = paramCriteria.remove(((Parameter)this.list.get(paramInt)).getKey());
    return (variable != null) ? variable.getValue() : null;
  }
  
  public Object getInstance() {
    return this.signature.create();
  }
  
  public Object getInstance(Criteria paramCriteria) {
    Object[] arrayOfObject = this.list.toArray();
    for (int i = 0; i < this.list.size(); i++)
      arrayOfObject[i] = getVariable(paramCriteria, i); 
    return this.signature.create(arrayOfObject);
  }
  
  public double getScore(Criteria paramCriteria) {
    Signature signature = this.signature.copy();
    for (Variable variable : paramCriteria) {
      Parameter parameter = signature.get(variable);
      variable = paramCriteria.get(variable);
      Contact contact = variable.getContact();
      if (parameter != null && !Support.isAssignable(variable.getValue().getClass(), parameter.getType()))
        return -1.0D; 
      if (contact.isReadOnly() && parameter == null)
        return -1.0D; 
    } 
    return getPercentage(paramCriteria);
  }
  
  public Signature getSignature() {
    return this.signature;
  }
  
  public Class getType() {
    return this.type;
  }
  
  public String toString() {
    return this.signature.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\SignatureCreator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */