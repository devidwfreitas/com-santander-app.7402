package org.simpleframework.xml.core;

import org.simpleframework.xml.stream.InputNode;

class Composite$Builder {
  protected final Composite composite;
  
  protected final Criteria criteria;
  
  protected final Schema schema;
  
  protected final Instance value;
  
  public Composite$Builder(Composite paramComposite, Criteria paramCriteria, Schema paramSchema, Instance paramInstance) {
    this.composite = paramComposite;
    this.criteria = paramCriteria;
    this.schema = paramSchema;
    this.value = paramInstance;
  }
  
  public Object read(InputNode paramInputNode) {
    Object object = this.value.getInstance();
    Section section = this.schema.getSection();
    this.value.setInstance(object);
    Composite.access$100(this.composite, paramInputNode, object, this.schema);
    Composite.access$200(this.composite, paramInputNode, object, section);
    Composite.access$300(this.composite, paramInputNode, object, section);
    Composite.access$400(this.composite, paramInputNode, object, section);
    this.criteria.commit(object);
    return object;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\Composite$Builder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */