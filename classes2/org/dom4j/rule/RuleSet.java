package org.dom4j.rule;

import java.util.ArrayList;
import java.util.Collections;
import org.dom4j.Node;

public class RuleSet {
  private Rule[] ruleArray;
  
  private ArrayList rules = new ArrayList();
  
  public void addAll(RuleSet paramRuleSet) {
    this.rules.addAll(paramRuleSet.rules);
    this.ruleArray = null;
  }
  
  public void addRule(Rule paramRule) {
    this.rules.add(paramRule);
    this.ruleArray = null;
  }
  
  public Rule getMatchingRule(Node paramNode) {
    Rule[] arrayOfRule = getRuleArray();
    for (int i = arrayOfRule.length - 1; i >= 0; i--) {
      Rule rule = arrayOfRule[i];
      if (rule.matches(paramNode))
        return rule; 
    } 
    return null;
  }
  
  protected Rule[] getRuleArray() {
    if (this.ruleArray == null) {
      Collections.sort(this.rules);
      this.ruleArray = new Rule[this.rules.size()];
      this.rules.toArray((Object[])this.ruleArray);
    } 
    return this.ruleArray;
  }
  
  public void removeRule(Rule paramRule) {
    this.rules.remove(paramRule);
    this.ruleArray = null;
  }
  
  public String toString() {
    return super.toString() + " [RuleSet: " + this.rules + " ]";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\rule\RuleSet.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */