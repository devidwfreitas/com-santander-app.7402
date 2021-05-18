package org.jaxen.pattern;

import org.jaxen.Context;

public class UnionPattern extends Pattern {
  private Pattern lhs;
  
  private String matchesNodeName = null;
  
  private short nodeType = 0;
  
  private Pattern rhs;
  
  public UnionPattern() {}
  
  public UnionPattern(Pattern paramPattern1, Pattern paramPattern2) {
    this.lhs = paramPattern1;
    this.rhs = paramPattern2;
    init();
  }
  
  private void init() {
    short s = this.lhs.getMatchType();
    if (s != this.rhs.getMatchType())
      s = 0; 
    this.nodeType = s;
    String str1 = this.lhs.getMatchesNodeName();
    String str2 = this.rhs.getMatchesNodeName();
    this.matchesNodeName = null;
    if (str1 != null && str2 != null && str1.equals(str2))
      this.matchesNodeName = str1; 
  }
  
  public Pattern getLHS() {
    return this.lhs;
  }
  
  public short getMatchType() {
    return this.nodeType;
  }
  
  public String getMatchesNodeName() {
    return this.matchesNodeName;
  }
  
  public Pattern getRHS() {
    return this.rhs;
  }
  
  public String getText() {
    return this.lhs.getText() + " | " + this.rhs.getText();
  }
  
  public Pattern[] getUnionPatterns() {
    return new Pattern[] { this.lhs, this.rhs };
  }
  
  public boolean matches(Object paramObject, Context paramContext) {
    return (this.lhs.matches(paramObject, paramContext) || this.rhs.matches(paramObject, paramContext));
  }
  
  public void setLHS(Pattern paramPattern) {
    this.lhs = paramPattern;
    init();
  }
  
  public void setRHS(Pattern paramPattern) {
    this.rhs = paramPattern;
    init();
  }
  
  public Pattern simplify() {
    this.lhs = this.lhs.simplify();
    this.rhs = this.rhs.simplify();
    init();
    return this;
  }
  
  public String toString() {
    return super.toString() + "[ lhs: " + this.lhs + " rhs: " + this.rhs + " ]";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\pattern\UnionPattern.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */