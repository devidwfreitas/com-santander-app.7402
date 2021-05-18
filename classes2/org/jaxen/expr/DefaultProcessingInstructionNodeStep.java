package org.jaxen.expr;

import org.jaxen.ContextSupport;
import org.jaxen.Navigator;
import org.jaxen.expr.iter.IterableAxis;

public class DefaultProcessingInstructionNodeStep extends DefaultStep implements ProcessingInstructionNodeStep {
  private static final long serialVersionUID = -4825000697808126927L;
  
  private String name;
  
  public DefaultProcessingInstructionNodeStep(IterableAxis paramIterableAxis, String paramString, PredicateSet paramPredicateSet) {
    super(paramIterableAxis, paramPredicateSet);
    this.name = paramString;
  }
  
  public String getName() {
    return this.name;
  }
  
  public String getText() {
    StringBuffer stringBuffer = new StringBuffer();
    stringBuffer.append(getAxisName());
    stringBuffer.append("::processing-instruction(");
    String str = getName();
    if (str != null && str.length() != 0) {
      stringBuffer.append("'");
      stringBuffer.append(str);
      stringBuffer.append("'");
    } 
    stringBuffer.append(")");
    stringBuffer.append(super.getText());
    return stringBuffer.toString();
  }
  
  public boolean matches(Object paramObject, ContextSupport paramContextSupport) {
    Navigator navigator = paramContextSupport.getNavigator();
    if (navigator.isProcessingInstruction(paramObject)) {
      String str = getName();
      return (str == null || str.length() == 0) ? true : str.equals(navigator.getProcessingInstructionTarget(paramObject));
    } 
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\expr\DefaultProcessingInstructionNodeStep.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */