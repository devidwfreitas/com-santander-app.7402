package org.simpleframework.xml.core;

import org.simpleframework.xml.Version;
import org.simpleframework.xml.filter.Filter;
import org.simpleframework.xml.strategy.Strategy;
import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.strategy.Value;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.NodeMap;
import org.simpleframework.xml.stream.OutputNode;
import org.simpleframework.xml.stream.Style;

class Source implements Context {
  private TemplateEngine engine;
  
  private Filter filter;
  
  private Session session;
  
  private Strategy strategy;
  
  private Support support;
  
  public Source(Strategy paramStrategy, Support paramSupport, Session paramSession) {
    this.filter = new TemplateFilter(this, paramSupport);
    this.engine = new TemplateEngine(this.filter);
    this.strategy = paramStrategy;
    this.support = paramSupport;
    this.session = paramSession;
  }
  
  private Scanner getScanner(Class paramClass) {
    return this.support.getScanner(paramClass);
  }
  
  public Object getAttribute(Object paramObject) {
    return this.session.get(paramObject);
  }
  
  public Caller getCaller(Class paramClass) {
    return getScanner(paramClass).getCaller(this);
  }
  
  public Decorator getDecorator(Class paramClass) {
    return getScanner(paramClass).getDecorator();
  }
  
  public Instance getInstance(Class paramClass) {
    return this.support.getInstance(paramClass);
  }
  
  public Instance getInstance(Value paramValue) {
    return this.support.getInstance(paramValue);
  }
  
  public String getName(Class paramClass) {
    return this.support.getName(paramClass);
  }
  
  public Value getOverride(Type paramType, InputNode paramInputNode) {
    NodeMap nodeMap = paramInputNode.getAttributes();
    if (nodeMap == null)
      throw new PersistenceException("No attributes for %s", new Object[] { paramInputNode }); 
    return this.strategy.read(paramType, nodeMap, this.session);
  }
  
  public String getProperty(String paramString) {
    return this.engine.process(paramString);
  }
  
  public Schema getSchema(Class paramClass) {
    Scanner scanner = getScanner(paramClass);
    if (scanner == null)
      throw new PersistenceException("Invalid schema class %s", new Object[] { paramClass }); 
    return new ClassSchema(scanner, this);
  }
  
  public Session getSession() {
    return this.session;
  }
  
  public Style getStyle() {
    return this.support.getStyle();
  }
  
  public Support getSupport() {
    return this.support;
  }
  
  public Class getType(Type paramType, Object paramObject) {
    return (paramObject != null) ? paramObject.getClass() : paramType.getType();
  }
  
  public Version getVersion(Class paramClass) {
    return getScanner(paramClass).getRevision();
  }
  
  public boolean isFloat(Class paramClass) {
    Support support = this.support;
    return Support.isFloat(paramClass);
  }
  
  public boolean isFloat(Type paramType) {
    return isFloat(paramType.getType());
  }
  
  public boolean isPrimitive(Class paramClass) {
    return this.support.isPrimitive(paramClass);
  }
  
  public boolean isPrimitive(Type paramType) {
    return isPrimitive(paramType.getType());
  }
  
  public boolean isStrict() {
    return this.session.isStrict();
  }
  
  public boolean setOverride(Type paramType, Object paramObject, OutputNode paramOutputNode) {
    NodeMap nodeMap = paramOutputNode.getAttributes();
    if (nodeMap == null)
      throw new PersistenceException("No attributes for %s", new Object[] { paramOutputNode }); 
    return this.strategy.write(paramType, paramObject, nodeMap, this.session);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\Source.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */