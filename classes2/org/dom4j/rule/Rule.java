package org.dom4j.rule;

import org.dom4j.Node;
import org.dom4j.NodeType;

public class Rule implements Comparable {
  private Action action;
  
  private int appearenceCount;
  
  private int importPrecedence;
  
  private String mode;
  
  private Pattern pattern;
  
  private double priority;
  
  public Rule() {
    this.priority = 0.5D;
  }
  
  public Rule(Pattern paramPattern) {
    this.pattern = paramPattern;
    this.priority = paramPattern.getPriority();
  }
  
  public Rule(Pattern paramPattern, Action paramAction) {
    this(paramPattern);
    this.action = paramAction;
  }
  
  public Rule(Rule paramRule, Pattern paramPattern) {
    this.mode = paramRule.mode;
    this.importPrecedence = paramRule.importPrecedence;
    this.priority = paramRule.priority;
    this.appearenceCount = paramRule.appearenceCount;
    this.action = paramRule.action;
    this.pattern = paramPattern;
  }
  
  public int compareTo(Object paramObject) {
    return (paramObject instanceof Rule) ? compareTo((Rule)paramObject) : getClass().getName().compareTo(paramObject.getClass().getName());
  }
  
  public int compareTo(Rule paramRule) {
    int j = this.importPrecedence - paramRule.importPrecedence;
    int i = j;
    if (j == 0) {
      j = (int)Math.round(this.priority - paramRule.priority);
      i = j;
      if (j == 0)
        i = this.appearenceCount - paramRule.appearenceCount; 
    } 
    return i;
  }
  
  public boolean equals(Object paramObject) {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramObject instanceof Rule) {
      bool1 = bool2;
      if (compareTo((Rule)paramObject) == 0)
        bool1 = true; 
    } 
    return bool1;
  }
  
  public Action getAction() {
    return this.action;
  }
  
  public int getAppearenceCount() {
    return this.appearenceCount;
  }
  
  public int getImportPrecedence() {
    return this.importPrecedence;
  }
  
  public final NodeType getMatchType() {
    return this.pattern.getMatchType();
  }
  
  public final String getMatchesNodeName() {
    return this.pattern.getMatchesNodeName();
  }
  
  public String getMode() {
    return this.mode;
  }
  
  public Pattern getPattern() {
    return this.pattern;
  }
  
  public double getPriority() {
    return this.priority;
  }
  
  public Rule[] getUnionRules() {
    Pattern[] arrayOfPattern = this.pattern.getUnionPatterns();
    if (arrayOfPattern == null)
      return null; 
    int j = arrayOfPattern.length;
    Rule[] arrayOfRule = new Rule[j];
    int i = 0;
    while (true) {
      Rule[] arrayOfRule1 = arrayOfRule;
      if (i < j) {
        arrayOfRule[i] = new Rule(this, arrayOfPattern[i]);
        i++;
        continue;
      } 
      return arrayOfRule1;
    } 
  }
  
  public int hashCode() {
    return this.importPrecedence + this.appearenceCount;
  }
  
  public final boolean matches(Node paramNode) {
    return this.pattern.matches(paramNode);
  }
  
  public void setAction(Action paramAction) {
    this.action = paramAction;
  }
  
  public void setAppearenceCount(int paramInt) {
    this.appearenceCount = paramInt;
  }
  
  public void setImportPrecedence(int paramInt) {
    this.importPrecedence = paramInt;
  }
  
  public void setMode(String paramString) {
    this.mode = paramString;
  }
  
  public void setPattern(Pattern paramPattern) {
    this.pattern = paramPattern;
  }
  
  public void setPriority(double paramDouble) {
    this.priority = paramDouble;
  }
  
  public String toString() {
    return super.toString() + "[ pattern: " + getPattern() + " action: " + getAction() + " ]";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\rule\Rule.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */