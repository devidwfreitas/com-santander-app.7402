package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import org.simpleframework.xml.Path;
import org.simpleframework.xml.Root;
import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.Format;

class Introspector {
  private final Contact contact;
  
  private final Format format;
  
  private final Label label;
  
  private final Annotation marker;
  
  public Introspector(Contact paramContact, Label paramLabel, Format paramFormat) {
    this.marker = paramContact.getAnnotation();
    this.contact = paramContact;
    this.format = paramFormat;
    this.label = paramLabel;
  }
  
  private String getDefault() {
    String str = this.label.getOverride();
    return !isEmpty(str) ? str : this.contact.getName();
  }
  
  private String getName(Class paramClass) {
    String str = getRoot(paramClass);
    return (str != null) ? str : Reflector.getName(paramClass.getSimpleName());
  }
  
  private String getRoot(Class<?> paramClass) {
    for (Class<?> clazz = paramClass; clazz != null; clazz = clazz.getSuperclass()) {
      String str = getRoot(paramClass, clazz);
      if (str != null)
        return str; 
    } 
    return null;
  }
  
  private String getRoot(Class<?> paramClass1, Class<?> paramClass2) {
    String str = paramClass2.getSimpleName();
    Root root = paramClass2.<Root>getAnnotation(Root.class);
    if (root != null) {
      String str1 = root.name();
      return !isEmpty(str1) ? str1 : Reflector.getName(str);
    } 
    return null;
  }
  
  public Contact getContact() {
    return this.contact;
  }
  
  public Type getDependent() {
    return this.label.getDependent();
  }
  
  public String getEntry() {
    Class<?> clazz2 = getDependent().getType();
    Class<?> clazz1 = clazz2;
    if (clazz2.isArray())
      clazz1 = clazz2.getComponentType(); 
    return getName(clazz1);
  }
  
  public Expression getExpression() {
    String str = getPath();
    return (Expression)((str != null) ? new PathParser(str, this.contact, this.format) : new EmptyExpression(this.format));
  }
  
  public String getName() {
    String str = this.label.getEntry();
    if (!this.label.isInline())
      str = getDefault(); 
    return str;
  }
  
  public String getPath() {
    Path path = (Path)this.contact.getAnnotation(Path.class);
    return (path == null) ? null : path.value();
  }
  
  public boolean isEmpty(String paramString) {
    return (paramString == null || paramString.length() == 0);
  }
  
  public String toString() {
    return String.format("%s on %s", new Object[] { this.marker, this.contact });
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\Introspector.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */