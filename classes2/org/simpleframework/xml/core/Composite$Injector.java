package org.simpleframework.xml.core;

import org.simpleframework.xml.stream.InputNode;

class Composite$Injector extends Composite$Builder {
  private Composite$Injector(Composite paramComposite2, Criteria paramCriteria, Schema paramSchema, Instance paramInstance) {
    super(paramComposite2, paramCriteria, paramSchema, paramInstance);
  }
  
  private Object readInject(InputNode paramInputNode) {
    Object object = this.schema.getInstantiator().getInstance(this.criteria);
    this.value.setInstance(object);
    this.criteria.commit(object);
    return object;
  }
  
  public Object read(InputNode paramInputNode) {
    Section section = this.schema.getSection();
    Composite.access$100(this.composite, paramInputNode, null, this.schema);
    Composite.access$200(this.composite, paramInputNode, null, section);
    Composite.access$300(this.composite, paramInputNode, null, section);
    Composite.access$400(this.composite, paramInputNode, null, section);
    return readInject(paramInputNode);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\Composite$Injector.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */