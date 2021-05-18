package org.simpleframework.xml.core;

import java.lang.reflect.Constructor;
import org.simpleframework.xml.stream.Format;

class ExtractorFactory$ExtractorBuilder {
  private final Class label;
  
  private final Class type;
  
  public ExtractorFactory$ExtractorBuilder(Class paramClass1, Class paramClass2) {
    this.label = paramClass1;
    this.type = paramClass2;
  }
  
  private Constructor getConstructor() {
    return this.type.getConstructor(new Class[] { Contact.class, this.label, Format.class });
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\ExtractorFactory$ExtractorBuilder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */