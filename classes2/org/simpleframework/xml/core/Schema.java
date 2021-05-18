package org.simpleframework.xml.core;

import org.simpleframework.xml.Version;

interface Schema {
  Caller getCaller();
  
  Decorator getDecorator();
  
  Instantiator getInstantiator();
  
  Version getRevision();
  
  Section getSection();
  
  Label getText();
  
  Label getVersion();
  
  boolean isPrimitive();
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\Schema.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */