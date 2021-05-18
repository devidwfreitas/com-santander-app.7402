package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import org.simpleframework.xml.Text;
import org.simpleframework.xml.strategy.Type;

class TextListLabel extends TemplateLabel {
  private final String empty;
  
  private final Label label;
  
  private final Text text;
  
  public TextListLabel(Label paramLabel, Text paramText) {
    this.empty = paramText.empty();
    this.label = paramLabel;
    this.text = paramText;
  }
  
  public Annotation getAnnotation() {
    return this.label.getAnnotation();
  }
  
  public Contact getContact() {
    return this.label.getContact();
  }
  
  public Converter getConverter(Context paramContext) {
    Contact contact = getContact();
    if (!this.label.isCollection())
      throw new TextException("Cannot use %s to represent %s", new Object[] { contact, this.label }); 
    return new TextList(paramContext, contact, this.label);
  }
  
  public Decorator getDecorator() {
    return null;
  }
  
  public Type getDependent() {
    return this.label.getDependent();
  }
  
  public String getEmpty(Context paramContext) {
    return this.empty;
  }
  
  public String getEntry() {
    return this.label.getEntry();
  }
  
  public Expression getExpression() {
    return this.label.getExpression();
  }
  
  public Object getKey() {
    return this.label.getKey();
  }
  
  public String getName() {
    return this.label.getName();
  }
  
  public String[] getNames() {
    return this.label.getNames();
  }
  
  public String getOverride() {
    return this.label.getOverride();
  }
  
  public String getPath() {
    return this.label.getPath();
  }
  
  public String[] getPaths() {
    return this.label.getPaths();
  }
  
  public Class getType() {
    return this.label.getType();
  }
  
  public boolean isCollection() {
    return true;
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
  
  public boolean isTextList() {
    return true;
  }
  
  public String toString() {
    return String.format("%s %s", new Object[] { this.text, this.label });
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\TextListLabel.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */