package org.dom4j.rule;

import org.dom4j.Node;

public class NullAction implements Action {
  public static final NullAction SINGLETON = new NullAction();
  
  public void run(Node paramNode) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\rule\NullAction.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */