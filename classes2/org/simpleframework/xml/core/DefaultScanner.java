package org.simpleframework.xml.core;

import java.util.List;
import org.simpleframework.xml.DefaultType;
import org.simpleframework.xml.Order;
import org.simpleframework.xml.Version;

class DefaultScanner implements Scanner {
  private Detail detail;
  
  private Scanner scanner;
  
  public DefaultScanner(Detail paramDetail, Support paramSupport) {
    this.detail = new DefaultDetail(paramDetail, DefaultType.FIELD);
    this.scanner = new ObjectScanner(this.detail, paramSupport);
  }
  
  public Caller getCaller(Context paramContext) {
    return this.scanner.getCaller(paramContext);
  }
  
  public Function getCommit() {
    return this.scanner.getCommit();
  }
  
  public Function getComplete() {
    return this.scanner.getComplete();
  }
  
  public Decorator getDecorator() {
    return this.scanner.getDecorator();
  }
  
  public Instantiator getInstantiator() {
    return this.scanner.getInstantiator();
  }
  
  public String getName() {
    return this.detail.getName();
  }
  
  public Order getOrder() {
    return this.scanner.getOrder();
  }
  
  public ParameterMap getParameters() {
    return this.scanner.getParameters();
  }
  
  public Function getPersist() {
    return this.scanner.getPersist();
  }
  
  public Function getReplace() {
    return this.scanner.getReplace();
  }
  
  public Function getResolve() {
    return this.scanner.getResolve();
  }
  
  public Version getRevision() {
    return this.scanner.getRevision();
  }
  
  public Section getSection() {
    return this.scanner.getSection();
  }
  
  public Signature getSignature() {
    return this.scanner.getSignature();
  }
  
  public List<Signature> getSignatures() {
    return this.scanner.getSignatures();
  }
  
  public Label getText() {
    return this.scanner.getText();
  }
  
  public Class getType() {
    return this.scanner.getType();
  }
  
  public Function getValidate() {
    return this.scanner.getValidate();
  }
  
  public Label getVersion() {
    return this.scanner.getVersion();
  }
  
  public boolean isEmpty() {
    return this.scanner.isEmpty();
  }
  
  public boolean isPrimitive() {
    return this.scanner.isPrimitive();
  }
  
  public boolean isStrict() {
    return this.scanner.isStrict();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\DefaultScanner.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */