package org.jaxen.pattern;

import org.jaxen.Context;

public class TextNodeTest extends NodeTest {
  public static final TextNodeTest SINGLETON = new TextNodeTest();
  
  public short getMatchType() {
    return 3;
  }
  
  public double getPriority() {
    return -0.5D;
  }
  
  public String getText() {
    return "text()";
  }
  
  public boolean matches(Object paramObject, Context paramContext) {
    return paramContext.getNavigator().isText(paramObject);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\pattern\TextNodeTest.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */