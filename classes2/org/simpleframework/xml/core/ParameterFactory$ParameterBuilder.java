package org.simpleframework.xml.core;

import java.lang.reflect.Constructor;
import org.simpleframework.xml.stream.Format;

class ParameterFactory$ParameterBuilder {
  private final Class entry;
  
  private final Class label;
  
  private final Class type;
  
  public ParameterFactory$ParameterBuilder(Class paramClass1, Class paramClass2) {
    this(paramClass1, paramClass2, null);
  }
  
  public ParameterFactory$ParameterBuilder(Class paramClass1, Class paramClass2, Class paramClass3) {
    this.label = paramClass2;
    this.entry = paramClass3;
    this.type = paramClass1;
  }
  
  private Constructor getConstructor(Class... paramVarArgs) {
    return this.type.getConstructor(paramVarArgs);
  }
  
  public Constructor getConstructor() {
    return (this.entry != null) ? getConstructor(this.label, this.entry) : getConstructor(this.label);
  }
  
  public Constructor getConstructor(Class paramClass) {
    return getConstructor(new Class[] { Constructor.class, paramClass, Format.class, int.class });
  }
  
  public Constructor getConstructor(Class paramClass1, Class paramClass2) {
    return getConstructor(new Class[] { Constructor.class, paramClass1, paramClass2, Format.class, int.class });
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\ParameterFactory$ParameterBuilder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */