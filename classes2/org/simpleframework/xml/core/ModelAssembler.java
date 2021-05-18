package org.simpleframework.xml.core;

import org.simpleframework.xml.Order;
import org.simpleframework.xml.stream.Format;

class ModelAssembler {
  private final ExpressionBuilder builder;
  
  private final Detail detail;
  
  private final Format format;
  
  public ModelAssembler(ExpressionBuilder paramExpressionBuilder, Detail paramDetail, Support paramSupport) {
    this.format = paramSupport.getFormat();
    this.builder = paramExpressionBuilder;
    this.detail = paramDetail;
  }
  
  private void assembleAttributes(Model paramModel, Order paramOrder) {
    for (String str : paramOrder.attributes()) {
      Expression expression = this.builder.build(str);
      if (!expression.isAttribute() && expression.isPath())
        throw new PathException("Ordered attribute '%s' references an element in %s", new Object[] { expression, this.detail }); 
      if (!expression.isPath()) {
        paramModel.registerAttribute(this.format.getStyle().getAttribute(str));
      } else {
        registerAttributes(paramModel, expression);
      } 
    } 
  }
  
  private void assembleElements(Model paramModel, Order paramOrder) {
    for (String str : paramOrder.elements()) {
      Expression expression = this.builder.build(str);
      if (expression.isAttribute())
        throw new PathException("Ordered element '%s' references an attribute in %s", new Object[] { expression, this.detail }); 
      registerElements(paramModel, expression);
    } 
  }
  
  private void registerAttribute(Model paramModel, Expression paramExpression) {
    String str = paramExpression.getFirst();
    if (str != null)
      paramModel.registerAttribute(str); 
  }
  
  private void registerAttributes(Model paramModel, Expression paramExpression) {
    String str2 = paramExpression.getPrefix();
    String str1 = paramExpression.getFirst();
    int i = paramExpression.getIndex();
    if (paramExpression.isPath()) {
      paramModel = paramModel.register(str1, str2, i);
      paramExpression = paramExpression.getPath(1);
      if (paramModel == null)
        throw new PathException("Element '%s' does not exist in %s", new Object[] { str1, this.detail }); 
      registerAttributes(paramModel, paramExpression);
      return;
    } 
    registerAttribute(paramModel, paramExpression);
  }
  
  private void registerElement(Model paramModel, Expression paramExpression) {
    String str1 = paramExpression.getPrefix();
    String str2 = paramExpression.getFirst();
    int i = paramExpression.getIndex();
    if (i > 1 && paramModel.lookup(str2, i - 1) == null)
      throw new PathException("Ordered element '%s' in path '%s' is out of sequence for %s", new Object[] { str2, paramExpression, this.detail }); 
    paramModel.register(str2, str1, i);
  }
  
  private void registerElements(Model paramModel, Expression paramExpression) {
    String str1 = paramExpression.getPrefix();
    String str2 = paramExpression.getFirst();
    int i = paramExpression.getIndex();
    if (str2 != null) {
      Model model = paramModel.register(str2, str1, i);
      Expression expression = paramExpression.getPath(1);
      if (paramExpression.isPath())
        registerElements(model, expression); 
    } 
    registerElement(paramModel, paramExpression);
  }
  
  public void assemble(Model paramModel, Order paramOrder) {
    assembleElements(paramModel, paramOrder);
    assembleAttributes(paramModel, paramOrder);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\ModelAssembler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */