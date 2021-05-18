package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementUnion;
import org.simpleframework.xml.stream.Format;

class ElementUnionParameter extends TemplateParameter {
  private final ElementUnionParameter$Contact contact;
  
  private final Expression expression;
  
  private final int index;
  
  private final Object key;
  
  private final Label label;
  
  private final String name;
  
  private final String path;
  
  private final Class type;
  
  public ElementUnionParameter(Constructor paramConstructor, ElementUnion paramElementUnion, Element paramElement, Format paramFormat, int paramInt) {
    this.contact = new ElementUnionParameter$Contact(paramElement, paramConstructor, paramInt);
    this.label = new ElementUnionLabel(this.contact, paramElementUnion, paramElement, paramFormat);
    this.expression = this.label.getExpression();
    this.path = this.label.getPath();
    this.type = this.label.getType();
    this.name = this.label.getName();
    this.key = this.label.getKey();
    this.index = paramInt;
  }
  
  public Annotation getAnnotation() {
    return this.contact.getAnnotation();
  }
  
  public Expression getExpression() {
    return this.expression;
  }
  
  public int getIndex() {
    return this.index;
  }
  
  public Object getKey() {
    return this.key;
  }
  
  public String getName() {
    return this.name;
  }
  
  public String getPath() {
    return this.path;
  }
  
  public Class getType() {
    return this.type;
  }
  
  public boolean isPrimitive() {
    return this.type.isPrimitive();
  }
  
  public boolean isRequired() {
    return this.label.isRequired();
  }
  
  public String toString() {
    return this.contact.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\ElementUnionParameter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */