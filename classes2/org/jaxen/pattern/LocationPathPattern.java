package org.jaxen.pattern;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.jaxen.Context;
import org.jaxen.JaxenException;
import org.jaxen.expr.FilterExpr;

public class LocationPathPattern extends Pattern {
  private boolean absolute;
  
  private Pattern ancestorPattern;
  
  private List filters;
  
  private NodeTest nodeTest = AnyNodeTest.getInstance();
  
  private Pattern parentPattern;
  
  public LocationPathPattern() {}
  
  public LocationPathPattern(NodeTest paramNodeTest) {
    this.nodeTest = paramNodeTest;
  }
  
  public void addFilter(FilterExpr paramFilterExpr) {
    if (this.filters == null)
      this.filters = new ArrayList(); 
    this.filters.add(paramFilterExpr);
  }
  
  public short getMatchType() {
    return this.nodeTest.getMatchType();
  }
  
  public double getPriority() {
    return (this.filters != null) ? 0.5D : this.nodeTest.getPriority();
  }
  
  public String getText() {
    StringBuffer stringBuffer = new StringBuffer();
    if (this.absolute)
      stringBuffer.append("/"); 
    if (this.ancestorPattern != null) {
      String str = this.ancestorPattern.getText();
      if (str.length() > 0) {
        stringBuffer.append(str);
        stringBuffer.append("//");
      } 
    } 
    if (this.parentPattern != null) {
      String str = this.parentPattern.getText();
      if (str.length() > 0) {
        stringBuffer.append(str);
        stringBuffer.append("/");
      } 
    } 
    stringBuffer.append(this.nodeTest.getText());
    if (this.filters != null) {
      stringBuffer.append("[");
      Iterator<FilterExpr> iterator = this.filters.iterator();
      while (iterator.hasNext())
        stringBuffer.append(((FilterExpr)iterator.next()).getText()); 
      stringBuffer.append("]");
    } 
    return stringBuffer.toString();
  }
  
  public boolean hasAnyNodeTest() {
    return this.nodeTest instanceof AnyNodeTest;
  }
  
  public boolean isAbsolute() {
    return this.absolute;
  }
  
  public boolean matches(Object paramObject, Context paramContext) {
    // Byte code:
    //   0: aload_2
    //   1: invokevirtual getNavigator : ()Lorg/jaxen/Navigator;
    //   4: astore #5
    //   6: aload_0
    //   7: getfield nodeTest : Lorg/jaxen/pattern/NodeTest;
    //   10: aload_1
    //   11: aload_2
    //   12: invokevirtual matches : (Ljava/lang/Object;Lorg/jaxen/Context;)Z
    //   15: ifne -> 20
    //   18: iconst_0
    //   19: ireturn
    //   20: aload_0
    //   21: getfield parentPattern : Lorg/jaxen/pattern/Pattern;
    //   24: ifnull -> 55
    //   27: aload #5
    //   29: aload_1
    //   30: invokeinterface getParentNode : (Ljava/lang/Object;)Ljava/lang/Object;
    //   35: astore #4
    //   37: aload #4
    //   39: ifnull -> 18
    //   42: aload_0
    //   43: getfield parentPattern : Lorg/jaxen/pattern/Pattern;
    //   46: aload #4
    //   48: aload_2
    //   49: invokevirtual matches : (Ljava/lang/Object;Lorg/jaxen/Context;)Z
    //   52: ifeq -> 18
    //   55: aload_0
    //   56: getfield ancestorPattern : Lorg/jaxen/pattern/Pattern;
    //   59: ifnull -> 85
    //   62: aload #5
    //   64: aload_1
    //   65: invokeinterface getParentNode : (Ljava/lang/Object;)Ljava/lang/Object;
    //   70: astore #4
    //   72: aload_0
    //   73: getfield ancestorPattern : Lorg/jaxen/pattern/Pattern;
    //   76: aload #4
    //   78: aload_2
    //   79: invokevirtual matches : (Ljava/lang/Object;Lorg/jaxen/Context;)Z
    //   82: ifeq -> 155
    //   85: aload_0
    //   86: getfield filters : Ljava/util/List;
    //   89: ifnull -> 186
    //   92: new org/jaxen/util/SingletonList
    //   95: dup
    //   96: aload_1
    //   97: invokespecial <init> : (Ljava/lang/Object;)V
    //   100: astore_1
    //   101: aload_2
    //   102: aload_1
    //   103: invokevirtual setNodeSet : (Ljava/util/List;)V
    //   106: aload_0
    //   107: getfield filters : Ljava/util/List;
    //   110: invokeinterface iterator : ()Ljava/util/Iterator;
    //   115: astore #4
    //   117: aload #4
    //   119: invokeinterface hasNext : ()Z
    //   124: ifeq -> 188
    //   127: aload #4
    //   129: invokeinterface next : ()Ljava/lang/Object;
    //   134: checkcast org/jaxen/expr/FilterExpr
    //   137: aload_2
    //   138: invokeinterface asBoolean : (Lorg/jaxen/Context;)Z
    //   143: ifne -> 117
    //   146: iconst_0
    //   147: istore_3
    //   148: aload_2
    //   149: aload_1
    //   150: invokevirtual setNodeSet : (Ljava/util/List;)V
    //   153: iload_3
    //   154: ireturn
    //   155: aload #4
    //   157: ifnull -> 18
    //   160: aload #5
    //   162: aload #4
    //   164: invokeinterface isDocument : (Ljava/lang/Object;)Z
    //   169: ifne -> 18
    //   172: aload #5
    //   174: aload #4
    //   176: invokeinterface getParentNode : (Ljava/lang/Object;)Ljava/lang/Object;
    //   181: astore #4
    //   183: goto -> 72
    //   186: iconst_1
    //   187: ireturn
    //   188: iconst_1
    //   189: istore_3
    //   190: goto -> 148
  }
  
  public void setAbsolute(boolean paramBoolean) {
    this.absolute = paramBoolean;
  }
  
  public void setAncestorPattern(Pattern paramPattern) {
    this.ancestorPattern = paramPattern;
  }
  
  public void setNodeTest(NodeTest paramNodeTest) {
    if (this.nodeTest instanceof AnyNodeTest) {
      this.nodeTest = paramNodeTest;
      return;
    } 
    throw new JaxenException("Attempt to overwrite nodeTest: " + this.nodeTest + " with: " + paramNodeTest);
  }
  
  public void setParentPattern(Pattern paramPattern) {
    this.parentPattern = paramPattern;
  }
  
  public Pattern simplify() {
    if (this.parentPattern != null)
      this.parentPattern = this.parentPattern.simplify(); 
    if (this.ancestorPattern != null)
      this.ancestorPattern = this.ancestorPattern.simplify(); 
    LocationPathPattern locationPathPattern = this;
    if (this.filters == null) {
      if (this.parentPattern == null && this.ancestorPattern == null)
        return this.nodeTest; 
    } else {
      return locationPathPattern;
    } 
    locationPathPattern = this;
    if (this.parentPattern != null) {
      locationPathPattern = this;
      if (this.ancestorPattern == null) {
        locationPathPattern = this;
        if (this.nodeTest instanceof AnyNodeTest)
          return this.parentPattern; 
      } 
    } 
    return locationPathPattern;
  }
  
  public String toString() {
    return super.toString() + "[ absolute: " + this.absolute + " parent: " + this.parentPattern + " ancestor: " + this.ancestorPattern + " filters: " + this.filters + " nodeTest: " + this.nodeTest + " ]";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\pattern\LocationPathPattern.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */