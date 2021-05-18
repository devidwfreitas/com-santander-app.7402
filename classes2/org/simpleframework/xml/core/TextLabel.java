package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import org.simpleframework.xml.Text;
import org.simpleframework.xml.stream.Format;

class TextLabel extends TemplateLabel {
  private Contact contact;
  
  private boolean data;
  
  private Introspector detail;
  
  private String empty;
  
  private Text label;
  
  private Expression path;
  
  private boolean required;
  
  private Class type;
  
  public TextLabel(Contact paramContact, Text paramText, Format paramFormat) {
    this.detail = new Introspector(paramContact, this, paramFormat);
    this.required = paramText.required();
    this.type = paramContact.getType();
    this.empty = paramText.empty();
    this.data = paramText.data();
    this.contact = paramContact;
    this.label = paramText;
  }
  
  public Annotation getAnnotation() {
    return (Annotation)this.label;
  }
  
  public Contact getContact() {
    return this.contact;
  }
  
  public Converter getConverter(Context paramContext) {
    String str = getEmpty(paramContext);
    Contact contact = getContact();
    if (!paramContext.isPrimitive(contact))
      throw new TextException("Cannot use %s to represent %s", new Object[] { contact, this.label }); 
    return new Primitive(paramContext, contact, str);
  }
  
  public Decorator getDecorator() {
    return null;
  }
  
  public String getEmpty(Context paramContext) {
    return this.detail.isEmpty(this.empty) ? null : this.empty;
  }
  
  public Expression getExpression() {
    if (this.path == null)
      this.path = this.detail.getExpression(); 
    return this.path;
  }
  
  public String getName() {
    return "";
  }
  
  public String getOverride() {
    return this.contact.toString();
  }
  
  public String getPath() {
    return getExpression().getPath();
  }
  
  public Class getType() {
    return this.type;
  }
  
  public boolean isData() {
    return this.data;
  }
  
  public boolean isInline() {
    return true;
  }
  
  public boolean isRequired() {
    return this.required;
  }
  
  public boolean isText() {
    return true;
  }
  
  public String toString() {
    return this.detail.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\TextLabel.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */