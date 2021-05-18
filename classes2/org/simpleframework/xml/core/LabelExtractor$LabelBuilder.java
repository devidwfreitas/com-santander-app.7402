package org.simpleframework.xml.core;

import java.lang.reflect.Constructor;
import org.simpleframework.xml.stream.Format;

class LabelExtractor$LabelBuilder {
  private final Class entry;
  
  private final Class label;
  
  private final Class type;
  
  public LabelExtractor$LabelBuilder(Class paramClass1, Class paramClass2) {
    this(paramClass1, paramClass2, null);
  }
  
  public LabelExtractor$LabelBuilder(Class paramClass1, Class paramClass2, Class paramClass3) {
    this.entry = paramClass3;
    this.label = paramClass2;
    this.type = paramClass1;
  }
  
  private Constructor getConstructor(Class paramClass) {
    return this.type.getConstructor(new Class[] { Contact.class, paramClass, Format.class });
  }
  
  private Constructor getConstructor(Class paramClass1, Class paramClass2) {
    return this.type.getConstructor(new Class[] { Contact.class, paramClass1, paramClass2, Format.class });
  }
  
  public Constructor getConstructor() {
    return (this.entry != null) ? getConstructor(this.label, this.entry) : getConstructor(this.label);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\LabelExtractor$LabelBuilder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */