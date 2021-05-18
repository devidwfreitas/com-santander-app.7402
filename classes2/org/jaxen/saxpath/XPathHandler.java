package org.jaxen.saxpath;

public interface XPathHandler {
  void endAbsoluteLocationPath();
  
  void endAdditiveExpr(int paramInt);
  
  void endAllNodeStep();
  
  void endAndExpr(boolean paramBoolean);
  
  void endCommentNodeStep();
  
  void endEqualityExpr(int paramInt);
  
  void endFilterExpr();
  
  void endFunction();
  
  void endMultiplicativeExpr(int paramInt);
  
  void endNameStep();
  
  void endOrExpr(boolean paramBoolean);
  
  void endPathExpr();
  
  void endPredicate();
  
  void endProcessingInstructionNodeStep();
  
  void endRelationalExpr(int paramInt);
  
  void endRelativeLocationPath();
  
  void endTextNodeStep();
  
  void endUnaryExpr(int paramInt);
  
  void endUnionExpr(boolean paramBoolean);
  
  void endXPath();
  
  void literal(String paramString);
  
  void number(double paramDouble);
  
  void number(int paramInt);
  
  void startAbsoluteLocationPath();
  
  void startAdditiveExpr();
  
  void startAllNodeStep(int paramInt);
  
  void startAndExpr();
  
  void startCommentNodeStep(int paramInt);
  
  void startEqualityExpr();
  
  void startFilterExpr();
  
  void startFunction(String paramString1, String paramString2);
  
  void startMultiplicativeExpr();
  
  void startNameStep(int paramInt, String paramString1, String paramString2);
  
  void startOrExpr();
  
  void startPathExpr();
  
  void startPredicate();
  
  void startProcessingInstructionNodeStep(int paramInt, String paramString);
  
  void startRelationalExpr();
  
  void startRelativeLocationPath();
  
  void startTextNodeStep(int paramInt);
  
  void startUnaryExpr();
  
  void startUnionExpr();
  
  void startXPath();
  
  void variableReference(String paramString1, String paramString2);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\saxpath\XPathHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */