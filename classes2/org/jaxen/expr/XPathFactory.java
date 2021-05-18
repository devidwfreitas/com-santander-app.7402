package org.jaxen.expr;

public interface XPathFactory {
  LocationPath createAbsoluteLocationPath();
  
  BinaryExpr createAdditiveExpr(Expr paramExpr1, Expr paramExpr2, int paramInt);
  
  Step createAllNodeStep(int paramInt);
  
  BinaryExpr createAndExpr(Expr paramExpr1, Expr paramExpr2);
  
  Step createCommentNodeStep(int paramInt);
  
  BinaryExpr createEqualityExpr(Expr paramExpr1, Expr paramExpr2, int paramInt);
  
  FilterExpr createFilterExpr(Expr paramExpr);
  
  FunctionCallExpr createFunctionCallExpr(String paramString1, String paramString2);
  
  LiteralExpr createLiteralExpr(String paramString);
  
  BinaryExpr createMultiplicativeExpr(Expr paramExpr1, Expr paramExpr2, int paramInt);
  
  Step createNameStep(int paramInt, String paramString1, String paramString2);
  
  NumberExpr createNumberExpr(double paramDouble);
  
  NumberExpr createNumberExpr(int paramInt);
  
  BinaryExpr createOrExpr(Expr paramExpr1, Expr paramExpr2);
  
  PathExpr createPathExpr(FilterExpr paramFilterExpr, LocationPath paramLocationPath);
  
  Predicate createPredicate(Expr paramExpr);
  
  PredicateSet createPredicateSet();
  
  Step createProcessingInstructionNodeStep(int paramInt, String paramString);
  
  BinaryExpr createRelationalExpr(Expr paramExpr1, Expr paramExpr2, int paramInt);
  
  LocationPath createRelativeLocationPath();
  
  Step createTextNodeStep(int paramInt);
  
  Expr createUnaryExpr(Expr paramExpr, int paramInt);
  
  UnionExpr createUnionExpr(Expr paramExpr1, Expr paramExpr2);
  
  VariableReferenceExpr createVariableReferenceExpr(String paramString1, String paramString2);
  
  XPathExpr createXPath(Expr paramExpr);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\expr\XPathFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */