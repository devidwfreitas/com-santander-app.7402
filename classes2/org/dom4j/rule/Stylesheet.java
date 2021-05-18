package org.dom4j.rule;

import java.util.List;
import org.dom4j.Node;
import org.dom4j.XPath;
import org.jaxen.XPath;

public class Stylesheet {
  private String modeName;
  
  private RuleManager ruleManager = new RuleManager();
  
  public void addRule(Rule paramRule) {
    this.ruleManager.addRule(paramRule);
  }
  
  public void applyTemplates(Object paramObject) {
    applyTemplates(paramObject, this.modeName);
  }
  
  public void applyTemplates(Object paramObject, String paramString) {
    int j = 0;
    int i = 0;
    Mode mode = this.ruleManager.getMode(paramString);
    if (paramObject instanceof org.dom4j.Element) {
      paramObject = paramObject;
      j = paramObject.nodeCount();
      while (i < j) {
        mode.fireRule(paramObject.node(i));
        i++;
      } 
    } else if (paramObject instanceof org.dom4j.Document) {
      paramObject = paramObject;
      int k = paramObject.nodeCount();
      for (i = j; i < k; i++)
        mode.fireRule(paramObject.node(i)); 
    } else if (paramObject instanceof List) {
      paramObject = paramObject;
      j = paramObject.size();
      for (i = 0; i < j; i++) {
        mode = paramObject.get(i);
        if (mode instanceof org.dom4j.Element) {
          applyTemplates(mode, paramString);
        } else if (mode instanceof org.dom4j.Document) {
          applyTemplates(mode, paramString);
        } 
      } 
    } 
  }
  
  public void applyTemplates(Object paramObject, XPath paramXPath) {
    applyTemplates(paramObject, paramXPath, this.modeName);
  }
  
  public void applyTemplates(Object paramObject, XPath paramXPath, String paramString) {
    Mode mode = this.ruleManager.getMode(paramString);
    paramObject = paramXPath.selectNodes(paramObject).iterator();
    while (paramObject.hasNext())
      mode.fireRule(paramObject.next()); 
  }
  
  public void applyTemplates(Object paramObject, XPath paramXPath) {
    applyTemplates(paramObject, paramXPath, this.modeName);
  }
  
  public void applyTemplates(Object paramObject, XPath paramXPath, String paramString) {
    Mode mode = this.ruleManager.getMode(paramString);
    paramObject = paramXPath.selectNodes(paramObject).iterator();
    while (paramObject.hasNext())
      mode.fireRule(paramObject.next()); 
  }
  
  public void clear() {
    this.ruleManager.clear();
  }
  
  public String getModeName() {
    return this.modeName;
  }
  
  public Action getValueOfAction() {
    return this.ruleManager.getValueOfAction();
  }
  
  public void removeRule(Rule paramRule) {
    this.ruleManager.removeRule(paramRule);
  }
  
  public void run(Object paramObject) {
    run(paramObject, this.modeName);
  }
  
  public void run(Object paramObject, String paramString) {
    if (paramObject instanceof Node) {
      run((Node)paramObject, paramString);
      return;
    } 
    if (paramObject instanceof List) {
      run((List)paramObject, paramString);
      return;
    } 
  }
  
  public void run(List paramList) {
    run(paramList, this.modeName);
  }
  
  public void run(List<Object> paramList, String paramString) {
    int j = paramList.size();
    for (int i = 0; i < j; i++) {
      Node node = (Node)paramList.get(i);
      if (node instanceof Node)
        run(node, paramString); 
    } 
  }
  
  public void run(Node paramNode) {
    run(paramNode, this.modeName);
  }
  
  public void run(Node paramNode, String paramString) {
    this.ruleManager.getMode(paramString).fireRule(paramNode);
  }
  
  public void setModeName(String paramString) {
    this.modeName = paramString;
  }
  
  public void setValueOfAction(Action paramAction) {
    this.ruleManager.setValueOfAction(paramAction);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\rule\Stylesheet.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */