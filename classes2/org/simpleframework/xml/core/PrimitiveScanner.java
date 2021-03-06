package org.simpleframework.xml.core;

import java.util.LinkedList;
import java.util.List;
import org.simpleframework.xml.Order;
import org.simpleframework.xml.Version;

class PrimitiveScanner implements Scanner {
  private final Detail detail;
  
  private final Section section = new PrimitiveScanner$EmptySection(this);
  
  public PrimitiveScanner(Detail paramDetail) {
    this.detail = paramDetail;
  }
  
  public Caller getCaller(Context paramContext) {
    return new Caller(this, paramContext);
  }
  
  public Function getCommit() {
    return null;
  }
  
  public Function getComplete() {
    return null;
  }
  
  public Decorator getDecorator() {
    return null;
  }
  
  public Instantiator getInstantiator() {
    return null;
  }
  
  public String getName() {
    return null;
  }
  
  public Order getOrder() {
    return null;
  }
  
  public ParameterMap getParameters() {
    return new ParameterMap();
  }
  
  public Function getPersist() {
    return null;
  }
  
  public Function getReplace() {
    return null;
  }
  
  public Function getResolve() {
    return null;
  }
  
  public Version getRevision() {
    return null;
  }
  
  public Section getSection() {
    return this.section;
  }
  
  public Signature getSignature() {
    return null;
  }
  
  public List<Signature> getSignatures() {
    return new LinkedList<Signature>();
  }
  
  public Label getText() {
    return null;
  }
  
  public Class getType() {
    return this.detail.getType();
  }
  
  public Function getValidate() {
    return null;
  }
  
  public Label getVersion() {
    return null;
  }
  
  public boolean isEmpty() {
    return true;
  }
  
  public boolean isPrimitive() {
    return true;
  }
  
  public boolean isStrict() {
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\PrimitiveScanner.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */