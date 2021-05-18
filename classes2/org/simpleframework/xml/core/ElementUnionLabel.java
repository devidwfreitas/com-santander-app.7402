package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementUnion;
import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.Format;

class ElementUnionLabel extends TemplateLabel {
  private Contact contact;
  
  private GroupExtractor extractor;
  
  private Label label;
  
  private Expression path;
  
  private ElementUnion union;
  
  public ElementUnionLabel(Contact paramContact, ElementUnion paramElementUnion, Element paramElement, Format paramFormat) {
    this.extractor = new GroupExtractor(paramContact, (Annotation)paramElementUnion, paramFormat);
    this.label = new ElementLabel(paramContact, paramElement, paramFormat);
    this.contact = paramContact;
    this.union = paramElementUnion;
  }
  
  public Annotation getAnnotation() {
    return this.label.getAnnotation();
  }
  
  public Contact getContact() {
    return this.contact;
  }
  
  public Converter getConverter(Context paramContext) {
    Expression expression = getExpression();
    Contact contact = getContact();
    if (contact == null)
      throw new UnionException("Union %s was not declared on a field or method", new Object[] { this.label }); 
    return new CompositeUnion(paramContext, this.extractor, expression, contact);
  }
  
  public Decorator getDecorator() {
    return this.label.getDecorator();
  }
  
  public Type getDependent() {
    return this.label.getDependent();
  }
  
  public Object getEmpty(Context paramContext) {
    return this.label.getEmpty(paramContext);
  }
  
  public String getEntry() {
    return this.label.getEntry();
  }
  
  public Expression getExpression() {
    if (this.path == null)
      this.path = this.label.getExpression(); 
    return this.path;
  }
  
  public Label getLabel(Class paramClass) {
    Contact contact = getContact();
    if (!this.extractor.isValid(paramClass))
      throw new UnionException("No type matches %s in %s for %s", new Object[] { paramClass, this.union, contact }); 
    return this.extractor.getLabel(paramClass);
  }
  
  public String getName() {
    return this.label.getName();
  }
  
  public String[] getNames() {
    return this.extractor.getNames();
  }
  
  public String getOverride() {
    return this.label.getOverride();
  }
  
  public String getPath() {
    return this.label.getPath();
  }
  
  public String[] getPaths() {
    return this.extractor.getPaths();
  }
  
  public Class getType() {
    return this.label.getType();
  }
  
  public Type getType(Class paramClass) {
    Contact contact = getContact();
    if (!this.extractor.isValid(paramClass))
      throw new UnionException("No type matches %s in %s for %s", new Object[] { paramClass, this.union, contact }); 
    return (Type)(this.extractor.isDeclared(paramClass) ? new OverrideType(contact, paramClass) : contact);
  }
  
  public boolean isCollection() {
    return this.label.isCollection();
  }
  
  public boolean isData() {
    return this.label.isData();
  }
  
  public boolean isInline() {
    return this.label.isInline();
  }
  
  public boolean isRequired() {
    return this.label.isRequired();
  }
  
  public boolean isUnion() {
    return true;
  }
  
  public String toString() {
    return this.label.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\ElementUnionLabel.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */