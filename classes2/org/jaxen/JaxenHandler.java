package org.jaxen;

import java.util.Iterator;
import java.util.LinkedList;
import org.jaxen.expr.DefaultXPathFactory;
import org.jaxen.expr.Expr;
import org.jaxen.expr.FilterExpr;
import org.jaxen.expr.FunctionCallExpr;
import org.jaxen.expr.LocationPath;
import org.jaxen.expr.Predicate;
import org.jaxen.expr.Predicated;
import org.jaxen.expr.Step;
import org.jaxen.expr.XPathExpr;
import org.jaxen.expr.XPathFactory;
import org.jaxen.saxpath.XPathHandler;

public class JaxenHandler implements XPathHandler {
  public boolean simplified;
  
  public LinkedList stack = new LinkedList();
  
  private XPathExpr xpath;
  
  private XPathFactory xpathFactory = (XPathFactory)new DefaultXPathFactory();
  
  protected void addParameters(FunctionCallExpr paramFunctionCallExpr, Iterator<Expr> paramIterator) {
    while (paramIterator.hasNext())
      paramFunctionCallExpr.addParameter(paramIterator.next()); 
  }
  
  protected void addPredicates(Predicated paramPredicated, Iterator<Predicate> paramIterator) {
    while (paramIterator.hasNext())
      paramPredicated.addPredicate(paramIterator.next()); 
  }
  
  protected void addSteps(LocationPath paramLocationPath, Iterator<Step> paramIterator) {
    while (paramIterator.hasNext())
      paramLocationPath.addStep(paramIterator.next()); 
  }
  
  protected boolean canPop() {
    return (peekFrame().size() > 0);
  }
  
  public void endAbsoluteLocationPath() {
    endLocationPath();
  }
  
  public void endAdditiveExpr(int paramInt) {
    if (paramInt != 0) {
      Expr expr1 = (Expr)pop();
      Expr expr2 = (Expr)pop();
      push(getXPathFactory().createAdditiveExpr(expr2, expr1, paramInt));
    } 
  }
  
  public void endAllNodeStep() {
    endStep();
  }
  
  public void endAndExpr(boolean paramBoolean) {
    if (paramBoolean) {
      Expr expr1 = (Expr)pop();
      Expr expr2 = (Expr)pop();
      push(getXPathFactory().createAndExpr(expr2, expr1));
    } 
  }
  
  public void endCommentNodeStep() {
    endStep();
  }
  
  public void endEqualityExpr(int paramInt) {
    if (paramInt != 0) {
      Expr expr1 = (Expr)pop();
      Expr expr2 = (Expr)pop();
      push(getXPathFactory().createEqualityExpr(expr2, expr1, paramInt));
    } 
  }
  
  public void endFilterExpr() {
    Expr expr = peekFrame().removeFirst();
    FilterExpr filterExpr = getXPathFactory().createFilterExpr(expr);
    addPredicates((Predicated)filterExpr, popFrame().iterator());
    push(filterExpr);
  }
  
  public void endFunction() {
    FunctionCallExpr functionCallExpr = peekFrame().removeFirst();
    addParameters(functionCallExpr, popFrame().iterator());
    push(functionCallExpr);
  }
  
  public void endLocationPath() {
    LocationPath locationPath = peekFrame().removeFirst();
    addSteps(locationPath, popFrame().iterator());
    push(locationPath);
  }
  
  public void endMultiplicativeExpr(int paramInt) {
    if (paramInt != 0) {
      Expr expr1 = (Expr)pop();
      Expr expr2 = (Expr)pop();
      push(getXPathFactory().createMultiplicativeExpr(expr2, expr1, paramInt));
    } 
  }
  
  public void endNameStep() {
    endStep();
  }
  
  public void endOrExpr(boolean paramBoolean) {
    if (paramBoolean) {
      Expr expr1 = (Expr)pop();
      Expr expr2 = (Expr)pop();
      push(getXPathFactory().createOrExpr(expr2, expr1));
    } 
  }
  
  public void endPathExpr() {
    Object object;
    FilterExpr filterExpr = null;
    if (stackSize() == 2) {
      object = pop();
      filterExpr = (FilterExpr)pop();
    } else {
      object = pop();
      if (object instanceof LocationPath) {
        object = object;
      } else {
        filterExpr = (FilterExpr)object;
        object = null;
      } 
    } 
    popFrame();
    push(getXPathFactory().createPathExpr(filterExpr, (LocationPath)object));
  }
  
  public void endPredicate() {
    Predicate predicate = getXPathFactory().createPredicate((Expr)pop());
    popFrame();
    push(predicate);
  }
  
  public void endProcessingInstructionNodeStep() {
    endStep();
  }
  
  public void endRelationalExpr(int paramInt) {
    if (paramInt != 0) {
      Expr expr1 = (Expr)pop();
      Expr expr2 = (Expr)pop();
      push(getXPathFactory().createRelationalExpr(expr2, expr1, paramInt));
    } 
  }
  
  public void endRelativeLocationPath() {
    endLocationPath();
  }
  
  public void endStep() {
    Step step = peekFrame().removeFirst();
    addPredicates((Predicated)step, popFrame().iterator());
    push(step);
  }
  
  public void endTextNodeStep() {
    endStep();
  }
  
  public void endUnaryExpr(int paramInt) {
    if (paramInt != 0)
      push(getXPathFactory().createUnaryExpr((Expr)pop(), paramInt)); 
  }
  
  public void endUnionExpr(boolean paramBoolean) {
    if (paramBoolean) {
      Expr expr1 = (Expr)pop();
      Expr expr2 = (Expr)pop();
      push(getXPathFactory().createUnionExpr(expr2, expr1));
    } 
  }
  
  public void endXPath() {
    this.xpath = getXPathFactory().createXPath((Expr)pop());
    popFrame();
  }
  
  public XPathExpr getXPathExpr() {
    return getXPathExpr(true);
  }
  
  public XPathExpr getXPathExpr(boolean paramBoolean) {
    if (paramBoolean && !this.simplified) {
      this.xpath.simplify();
      this.simplified = true;
    } 
    return this.xpath;
  }
  
  public XPathFactory getXPathFactory() {
    return this.xpathFactory;
  }
  
  public void literal(String paramString) {
    push(getXPathFactory().createLiteralExpr(paramString));
  }
  
  public void number(double paramDouble) {
    push(getXPathFactory().createNumberExpr(paramDouble));
  }
  
  public void number(int paramInt) {
    push(getXPathFactory().createNumberExpr(paramInt));
  }
  
  protected LinkedList peekFrame() {
    return this.stack.getLast();
  }
  
  public Object pop() {
    return peekFrame().removeLast();
  }
  
  public LinkedList popFrame() {
    return this.stack.removeLast();
  }
  
  public void push(Object paramObject) {
    peekFrame().addLast(paramObject);
  }
  
  public void pushFrame() {
    this.stack.addLast(new LinkedList());
  }
  
  protected void returnExpr() {
    Expr expr = (Expr)pop();
    popFrame();
    push(expr);
  }
  
  public void setXPathFactory(XPathFactory paramXPathFactory) {
    this.xpathFactory = paramXPathFactory;
  }
  
  protected int stackSize() {
    return peekFrame().size();
  }
  
  public void startAbsoluteLocationPath() {
    pushFrame();
    push(getXPathFactory().createAbsoluteLocationPath());
  }
  
  public void startAdditiveExpr() {}
  
  public void startAllNodeStep(int paramInt) {
    pushFrame();
    push(getXPathFactory().createAllNodeStep(paramInt));
  }
  
  public void startAndExpr() {}
  
  public void startCommentNodeStep(int paramInt) {
    pushFrame();
    push(getXPathFactory().createCommentNodeStep(paramInt));
  }
  
  public void startEqualityExpr() {}
  
  public void startFilterExpr() {
    pushFrame();
  }
  
  public void startFunction(String paramString1, String paramString2) {
    pushFrame();
    push(getXPathFactory().createFunctionCallExpr(paramString1, paramString2));
  }
  
  public void startMultiplicativeExpr() {}
  
  public void startNameStep(int paramInt, String paramString1, String paramString2) {
    pushFrame();
    push(getXPathFactory().createNameStep(paramInt, paramString1, paramString2));
  }
  
  public void startOrExpr() {}
  
  public void startPathExpr() {
    pushFrame();
  }
  
  public void startPredicate() {
    pushFrame();
  }
  
  public void startProcessingInstructionNodeStep(int paramInt, String paramString) {
    pushFrame();
    push(getXPathFactory().createProcessingInstructionNodeStep(paramInt, paramString));
  }
  
  public void startRelationalExpr() {}
  
  public void startRelativeLocationPath() {
    pushFrame();
    push(getXPathFactory().createRelativeLocationPath());
  }
  
  public void startTextNodeStep(int paramInt) {
    pushFrame();
    push(getXPathFactory().createTextNodeStep(paramInt));
  }
  
  public void startUnaryExpr() {}
  
  public void startUnionExpr() {}
  
  public void startXPath() {
    this.simplified = false;
    pushFrame();
  }
  
  public void variableReference(String paramString1, String paramString2) {
    push(getXPathFactory().createVariableReferenceExpr(paramString1, paramString2));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\JaxenHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */