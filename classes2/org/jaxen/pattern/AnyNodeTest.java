package org.jaxen.pattern;

import org.jaxen.Context;

public class AnyNodeTest extends NodeTest {
  private static AnyNodeTest instance = new AnyNodeTest();
  
  public static AnyNodeTest getInstance() {
    return instance;
  }
  
  public short getMatchType() {
    return 0;
  }
  
  public double getPriority() {
    return -0.5D;
  }
  
  public String getText() {
    return "*";
  }
  
  public boolean matches(Object paramObject, Context paramContext) {
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\pattern\AnyNodeTest.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */