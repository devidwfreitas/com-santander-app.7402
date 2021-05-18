package org.dom4j.rule;

import java.util.HashMap;
import org.dom4j.Node;
import org.dom4j.rule.pattern.NodeTypePattern;

public class RuleManager {
  private int appearenceCount;
  
  private HashMap modes = new HashMap<Object, Object>();
  
  private Action valueOfAction;
  
  protected void addDefaultRule(Mode paramMode, Pattern paramPattern, Action paramAction) {
    paramMode.addRule(createDefaultRule(paramPattern, paramAction));
  }
  
  protected void addDefaultRules(Mode paramMode) {
    RuleManager$1 ruleManager$1 = new RuleManager$1(this, paramMode);
    Action action = getValueOfAction();
    addDefaultRule(paramMode, (Pattern)NodeTypePattern.ANY_DOCUMENT, ruleManager$1);
    addDefaultRule(paramMode, (Pattern)NodeTypePattern.ANY_ELEMENT, ruleManager$1);
    if (action != null) {
      addDefaultRule(paramMode, (Pattern)NodeTypePattern.ANY_ATTRIBUTE, action);
      addDefaultRule(paramMode, (Pattern)NodeTypePattern.ANY_TEXT, action);
    } 
  }
  
  public void addRule(Rule paramRule) {
    int i = this.appearenceCount + 1;
    this.appearenceCount = i;
    paramRule.setAppearenceCount(i);
    Mode mode = getMode(paramRule.getMode());
    Rule[] arrayOfRule = paramRule.getUnionRules();
    if (arrayOfRule != null) {
      i = 0;
      int j = arrayOfRule.length;
      while (i < j) {
        mode.addRule(arrayOfRule[i]);
        i++;
      } 
    } else {
      mode.addRule(paramRule);
    } 
  }
  
  public void clear() {
    this.modes.clear();
    this.appearenceCount = 0;
  }
  
  protected Rule createDefaultRule(Pattern paramPattern, Action paramAction) {
    Rule rule = new Rule(paramPattern, paramAction);
    rule.setImportPrecedence(-1);
    return rule;
  }
  
  protected Mode createMode() {
    Mode mode = new Mode();
    addDefaultRules(mode);
    return mode;
  }
  
  public Rule getMatchingRule(String paramString, Node paramNode) {
    Mode mode = (Mode)this.modes.get(paramString);
    if (mode != null)
      return mode.getMatchingRule(paramNode); 
    System.out.println("Warning: No Mode for mode: " + mode);
    return null;
  }
  
  public Mode getMode(String paramString) {
    Mode mode2 = (Mode)this.modes.get(paramString);
    Mode mode1 = mode2;
    if (mode2 == null) {
      mode1 = createMode();
      this.modes.put(paramString, mode1);
    } 
    return mode1;
  }
  
  public Action getValueOfAction() {
    return this.valueOfAction;
  }
  
  public void removeRule(Rule paramRule) {
    Mode mode = getMode(paramRule.getMode());
    Rule[] arrayOfRule = paramRule.getUnionRules();
    if (arrayOfRule != null) {
      int i = 0;
      int j = arrayOfRule.length;
      while (i < j) {
        mode.removeRule(arrayOfRule[i]);
        i++;
      } 
    } else {
      mode.removeRule(paramRule);
    } 
  }
  
  public void setValueOfAction(Action paramAction) {
    this.valueOfAction = paramAction;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\rule\RuleManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */