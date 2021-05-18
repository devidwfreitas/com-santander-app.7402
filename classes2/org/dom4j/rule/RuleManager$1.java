package org.dom4j.rule;

import org.dom4j.Document;
import org.dom4j.Element;
import org.dom4j.Node;

class RuleManager$1 implements Action {
  public void run(Node paramNode) {
    if (paramNode instanceof Element) {
      mode.applyTemplates((Element)paramNode);
      return;
    } 
    if (paramNode instanceof Document) {
      mode.applyTemplates((Document)paramNode);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\rule\RuleManager$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */