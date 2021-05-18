package org.jaxen.expr;

import org.jaxen.JaxenException;
import org.jaxen.expr.iter.IterableAncestorAxis;
import org.jaxen.expr.iter.IterableAncestorOrSelfAxis;
import org.jaxen.expr.iter.IterableAttributeAxis;
import org.jaxen.expr.iter.IterableAxis;
import org.jaxen.expr.iter.IterableChildAxis;
import org.jaxen.expr.iter.IterableDescendantAxis;
import org.jaxen.expr.iter.IterableDescendantOrSelfAxis;
import org.jaxen.expr.iter.IterableFollowingAxis;
import org.jaxen.expr.iter.IterableFollowingSiblingAxis;
import org.jaxen.expr.iter.IterableNamespaceAxis;
import org.jaxen.expr.iter.IterableParentAxis;
import org.jaxen.expr.iter.IterablePrecedingAxis;
import org.jaxen.expr.iter.IterablePrecedingSiblingAxis;
import org.jaxen.expr.iter.IterableSelfAxis;

public class DefaultXPathFactory implements XPathFactory {
  public LocationPath createAbsoluteLocationPath() {
    return new DefaultAbsoluteLocationPath();
  }
  
  public BinaryExpr createAdditiveExpr(Expr paramExpr1, Expr paramExpr2, int paramInt) {
    switch (paramInt) {
      default:
        throw new JaxenException("Unhandled operator in createAdditiveExpr(): " + paramInt);
      case 7:
        return new DefaultPlusExpr(paramExpr1, paramExpr2);
      case 8:
        break;
    } 
    return new DefaultMinusExpr(paramExpr1, paramExpr2);
  }
  
  public Step createAllNodeStep(int paramInt) {
    return new DefaultAllNodeStep(getIterableAxis(paramInt), createPredicateSet());
  }
  
  public BinaryExpr createAndExpr(Expr paramExpr1, Expr paramExpr2) {
    return new DefaultAndExpr(paramExpr1, paramExpr2);
  }
  
  public Step createCommentNodeStep(int paramInt) {
    return new DefaultCommentNodeStep(getIterableAxis(paramInt), createPredicateSet());
  }
  
  public BinaryExpr createEqualityExpr(Expr paramExpr1, Expr paramExpr2, int paramInt) {
    switch (paramInt) {
      default:
        throw new JaxenException("Unhandled operator in createEqualityExpr(): " + paramInt);
      case 1:
        return new DefaultEqualsExpr(paramExpr1, paramExpr2);
      case 2:
        break;
    } 
    return new DefaultNotEqualsExpr(paramExpr1, paramExpr2);
  }
  
  public FilterExpr createFilterExpr(Expr paramExpr) {
    return new DefaultFilterExpr(paramExpr, createPredicateSet());
  }
  
  public FunctionCallExpr createFunctionCallExpr(String paramString1, String paramString2) {
    return new DefaultFunctionCallExpr(paramString1, paramString2);
  }
  
  public LiteralExpr createLiteralExpr(String paramString) {
    return new DefaultLiteralExpr(paramString);
  }
  
  public BinaryExpr createMultiplicativeExpr(Expr paramExpr1, Expr paramExpr2, int paramInt) {
    switch (paramInt) {
      default:
        throw new JaxenException("Unhandled operator in createMultiplicativeExpr(): " + paramInt);
      case 9:
        return new DefaultMultiplyExpr(paramExpr1, paramExpr2);
      case 11:
        return new DefaultDivExpr(paramExpr1, paramExpr2);
      case 10:
        break;
    } 
    return new DefaultModExpr(paramExpr1, paramExpr2);
  }
  
  public Step createNameStep(int paramInt, String paramString1, String paramString2) {
    return new DefaultNameStep(getIterableAxis(paramInt), paramString1, paramString2, createPredicateSet());
  }
  
  public NumberExpr createNumberExpr(double paramDouble) {
    return new DefaultNumberExpr(new Double(paramDouble));
  }
  
  public NumberExpr createNumberExpr(int paramInt) {
    return new DefaultNumberExpr(new Double(paramInt));
  }
  
  public BinaryExpr createOrExpr(Expr paramExpr1, Expr paramExpr2) {
    return new DefaultOrExpr(paramExpr1, paramExpr2);
  }
  
  public PathExpr createPathExpr(FilterExpr paramFilterExpr, LocationPath paramLocationPath) {
    return new DefaultPathExpr(paramFilterExpr, paramLocationPath);
  }
  
  public Predicate createPredicate(Expr paramExpr) {
    return new DefaultPredicate(paramExpr);
  }
  
  public PredicateSet createPredicateSet() {
    return new PredicateSet();
  }
  
  public Step createProcessingInstructionNodeStep(int paramInt, String paramString) {
    return new DefaultProcessingInstructionNodeStep(getIterableAxis(paramInt), paramString, createPredicateSet());
  }
  
  public BinaryExpr createRelationalExpr(Expr paramExpr1, Expr paramExpr2, int paramInt) {
    switch (paramInt) {
      default:
        throw new JaxenException("Unhandled operator in createRelationalExpr(): " + paramInt);
      case 3:
        return new DefaultLessThanExpr(paramExpr1, paramExpr2);
      case 5:
        return new DefaultGreaterThanExpr(paramExpr1, paramExpr2);
      case 4:
        return new DefaultLessThanEqualExpr(paramExpr1, paramExpr2);
      case 6:
        break;
    } 
    return new DefaultGreaterThanEqualExpr(paramExpr1, paramExpr2);
  }
  
  public LocationPath createRelativeLocationPath() {
    return new DefaultRelativeLocationPath();
  }
  
  public Step createTextNodeStep(int paramInt) {
    return new DefaultTextNodeStep(getIterableAxis(paramInt), createPredicateSet());
  }
  
  public Expr createUnaryExpr(Expr paramExpr, int paramInt) {
    switch (paramInt) {
      default:
        return paramExpr;
      case 12:
        break;
    } 
    return new DefaultUnaryExpr(paramExpr);
  }
  
  public UnionExpr createUnionExpr(Expr paramExpr1, Expr paramExpr2) {
    return new DefaultUnionExpr(paramExpr1, paramExpr2);
  }
  
  public VariableReferenceExpr createVariableReferenceExpr(String paramString1, String paramString2) {
    return new DefaultVariableReferenceExpr(paramString1, paramString2);
  }
  
  public XPathExpr createXPath(Expr paramExpr) {
    return new DefaultXPathExpr(paramExpr);
  }
  
  protected IterableAxis getIterableAxis(int paramInt) {
    switch (paramInt) {
      default:
        throw new JaxenException("Unrecognized axis code: " + paramInt);
      case 1:
        return (IterableAxis)new IterableChildAxis(paramInt);
      case 2:
        return (IterableAxis)new IterableDescendantAxis(paramInt);
      case 3:
        return (IterableAxis)new IterableParentAxis(paramInt);
      case 5:
        return (IterableAxis)new IterableFollowingSiblingAxis(paramInt);
      case 6:
        return (IterableAxis)new IterablePrecedingSiblingAxis(paramInt);
      case 7:
        return (IterableAxis)new IterableFollowingAxis(paramInt);
      case 8:
        return (IterableAxis)new IterablePrecedingAxis(paramInt);
      case 9:
        return (IterableAxis)new IterableAttributeAxis(paramInt);
      case 10:
        return (IterableAxis)new IterableNamespaceAxis(paramInt);
      case 11:
        return (IterableAxis)new IterableSelfAxis(paramInt);
      case 12:
        return (IterableAxis)new IterableDescendantOrSelfAxis(paramInt);
      case 13:
        return (IterableAxis)new IterableAncestorOrSelfAxis(paramInt);
      case 4:
        break;
    } 
    return (IterableAxis)new IterableAncestorAxis(paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\expr\DefaultXPathFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */