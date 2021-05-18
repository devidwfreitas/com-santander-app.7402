package org.jaxen.pattern;

import org.jaxen.Context;

public class NoNodeTest extends NodeTest {
  private static NoNodeTest instance = new NoNodeTest();
  
  public static NoNodeTest getInstance() {
    return instance;
  }
  
  public short getMatchType() {
    return 14;
  }
  
  public double getPriority() {
    return -0.5D;
  }
  
  public String getText() {
    return "";
  }
  
  public boolean matches(Object paramObject, Context paramContext) {
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\pattern\NoNodeTest.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */