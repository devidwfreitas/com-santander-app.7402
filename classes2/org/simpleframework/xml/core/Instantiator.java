package org.simpleframework.xml.core;

import java.util.List;

interface Instantiator {
  List<Creator> getCreators();
  
  Object getInstance();
  
  Object getInstance(Criteria paramCriteria);
  
  Parameter getParameter(String paramString);
  
  List<Parameter> getParameters();
  
  boolean isDefault();
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\Instantiator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */