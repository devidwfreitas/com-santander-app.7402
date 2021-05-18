package org.jaxen.pattern;

import java.util.LinkedList;
import org.jaxen.JaxenHandler;
import org.jaxen.expr.Expr;
import org.jaxen.expr.FilterExpr;

public class PatternHandler extends JaxenHandler {
  private Pattern pattern;
  
  protected Pattern createAbsoluteLocationPath() {
    return new LocationPathPattern(NodeTypeTest.DOCUMENT_TEST);
  }
  
  protected Pattern createRelativeLocationPath() {
    return new LocationPathPattern();
  }
  
  public void endAbsoluteLocationPath() {
    endLocationPath();
  }
  
  protected void endLocationPath() {
    LinkedList<LocationPathPattern> linkedList = popFrame();
    System.out.println("endLocationPath: " + linkedList);
    LocationPathPattern locationPathPattern = linkedList.removeFirst();
    push(locationPathPattern);
    while (!linkedList.isEmpty()) {
      NodeTest nodeTest = (NodeTest)linkedList.removeFirst();
      if (nodeTest instanceof NodeTest) {
        locationPathPattern.setNodeTest(nodeTest);
        continue;
      } 
      if (nodeTest instanceof FilterExpr) {
        locationPathPattern.addFilter((FilterExpr)nodeTest);
        continue;
      } 
      if (nodeTest instanceof LocationPathPattern) {
        LocationPathPattern locationPathPattern1 = (LocationPathPattern)nodeTest;
        locationPathPattern.setParentPattern(locationPathPattern1);
        locationPathPattern = locationPathPattern1;
      } 
    } 
  }
  
  public void endPathExpr() {
    LinkedList linkedList = popFrame();
    System.out.println("endPathExpr(): " + linkedList);
    push(linkedList.removeFirst());
  }
  
  public void endRelativeLocationPath() {
    endLocationPath();
  }
  
  protected void endStep() {
    LinkedList linkedList = popFrame();
    if (!linkedList.isEmpty()) {
      push(linkedList.removeFirst());
      if (!linkedList.isEmpty())
        System.out.println("List should now be empty!" + linkedList); 
    } 
  }
  
  public void endUnionExpr(boolean paramBoolean) {
    if (paramBoolean) {
      Expr expr1 = (Expr)pop();
      Expr expr2 = (Expr)pop();
      push(getXPathFactory().createUnionExpr(expr2, expr1));
    } 
  }
  
  public void endXPath() {
    this.pattern = (Pattern)pop();
    System.out.println("stack is: " + this.stack);
    popFrame();
  }
  
  public Pattern getPattern() {
    return getPattern(true);
  }
  
  public Pattern getPattern(boolean paramBoolean) {
    if (paramBoolean && !this.simplified) {
      this.pattern.simplify();
      this.simplified = true;
    } 
    return this.pattern;
  }
  
  public void startAbsoluteLocationPath() {
    pushFrame();
    push(createAbsoluteLocationPath());
  }
  
  public void startAllNodeStep(int paramInt) {
    pushFrame();
    push(AnyNodeTest.getInstance());
  }
  
  public void startCommentNodeStep(int paramInt) {
    pushFrame();
    push(new NodeTypeTest((short)8));
  }
  
  public void startNameStep(int paramInt, String paramString1, String paramString2) {
    pushFrame();
    byte b = 1;
    switch (paramInt) {
      default:
        if (paramString1 != null && paramString1.length() > 0 && !paramString1.equals("*"))
          push(new NamespaceTest(paramString1, b)); 
        if (paramString2 != null && paramString2.length() > 0 && !paramString2.equals("*"))
          push(new NameTest(paramString2, b)); 
        return;
      case 9:
        b = 2;
      case 10:
        break;
    } 
    b = 13;
  }
  
  public void startProcessingInstructionNodeStep(int paramInt, String paramString) {
    pushFrame();
    push(new NodeTypeTest((short)7));
  }
  
  public void startRelativeLocationPath() {
    pushFrame();
    push(createRelativeLocationPath());
  }
  
  public void startTextNodeStep(int paramInt) {
    pushFrame();
    push(new NodeTypeTest((short)3));
  }
  
  public void startUnionExpr() {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\pattern\PatternHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */