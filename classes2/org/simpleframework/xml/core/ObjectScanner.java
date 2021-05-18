package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.util.List;
import org.simpleframework.xml.DefaultType;
import org.simpleframework.xml.Order;
import org.simpleframework.xml.Version;

class ObjectScanner implements Scanner {
  private StructureBuilder builder;
  
  private Detail detail;
  
  private ClassScanner scanner;
  
  private Structure structure;
  
  private Support support;
  
  public ObjectScanner(Detail paramDetail, Support paramSupport) {
    this.scanner = new ClassScanner(paramDetail, paramSupport);
    this.builder = new StructureBuilder(this, paramDetail, paramSupport);
    this.support = paramSupport;
    this.detail = paramDetail;
    scan(paramDetail);
  }
  
  private void commit(Detail paramDetail) {
    Class clazz = paramDetail.getType();
    if (this.structure == null)
      this.structure = this.builder.build(clazz); 
    this.builder = null;
  }
  
  private void field(Detail paramDetail) {
    Class clazz = paramDetail.getType();
    DefaultType defaultType = paramDetail.getOverride();
    for (Contact contact : this.support.getFields(clazz, defaultType)) {
      Annotation annotation = contact.getAnnotation();
      if (annotation != null)
        this.builder.process(contact, annotation); 
    } 
  }
  
  private void method(Detail paramDetail) {
    Class clazz = paramDetail.getType();
    DefaultType defaultType = paramDetail.getOverride();
    for (Contact contact : this.support.getMethods(clazz, defaultType)) {
      Annotation annotation = contact.getAnnotation();
      if (annotation != null)
        this.builder.process(contact, annotation); 
    } 
  }
  
  private void order(Detail paramDetail) {
    Class clazz = paramDetail.getType();
    this.builder.assemble(clazz);
  }
  
  private void scan(Detail paramDetail) {
    order(paramDetail);
    field(paramDetail);
    method(paramDetail);
    validate(paramDetail);
    commit(paramDetail);
  }
  
  private void validate(Detail paramDetail) {
    Class clazz = paramDetail.getType();
    this.builder.commit(clazz);
    this.builder.validate(clazz);
  }
  
  public Caller getCaller(Context paramContext) {
    return new Caller(this, paramContext);
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
    return this.structure.getInstantiator();
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
    return this.structure.getRevision();
  }
  
  public Section getSection() {
    return this.structure.getSection();
  }
  
  public Signature getSignature() {
    return this.scanner.getSignature();
  }
  
  public List<Signature> getSignatures() {
    return this.scanner.getSignatures();
  }
  
  public Label getText() {
    return this.structure.getText();
  }
  
  public Class getType() {
    return this.detail.getType();
  }
  
  public Function getValidate() {
    return this.scanner.getValidate();
  }
  
  public Label getVersion() {
    return this.structure.getVersion();
  }
  
  public boolean isEmpty() {
    return (this.scanner.getRoot() == null);
  }
  
  public boolean isPrimitive() {
    return this.structure.isPrimitive();
  }
  
  public boolean isStrict() {
    return this.detail.isStrict();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\ObjectScanner.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */