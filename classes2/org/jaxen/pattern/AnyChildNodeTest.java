package org.jaxen.pattern;

import org.jaxen.Context;

public class AnyChildNodeTest extends NodeTest {
  private static AnyChildNodeTest instance = new AnyChildNodeTest();
  
  public static AnyChildNodeTest getInstance() {
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
    short s = paramContext.getNavigator().getNodeType(paramObject);
    return (s == 1 || s == 3 || s == 8 || s == 7);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\pattern\AnyChildNodeTest.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */