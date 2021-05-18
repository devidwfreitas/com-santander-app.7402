package org.simpleframework.xml.core;

import java.util.List;
import org.simpleframework.xml.Order;
import org.simpleframework.xml.Version;

interface Scanner extends Policy {
  Caller getCaller(Context paramContext);
  
  Function getCommit();
  
  Function getComplete();
  
  Decorator getDecorator();
  
  Instantiator getInstantiator();
  
  String getName();
  
  Order getOrder();
  
  ParameterMap getParameters();
  
  Function getPersist();
  
  Function getReplace();
  
  Function getResolve();
  
  Version getRevision();
  
  Section getSection();
  
  Signature getSignature();
  
  List<Signature> getSignatures();
  
  Label getText();
  
  Class getType();
  
  Function getValidate();
  
  Label getVersion();
  
  boolean isEmpty();
  
  boolean isPrimitive();
  
  boolean isStrict();
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\Scanner.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */