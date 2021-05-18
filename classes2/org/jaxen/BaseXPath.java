package org.jaxen;

import java.io.Serializable;
import java.util.List;
import org.jaxen.expr.Expr;
import org.jaxen.expr.XPathExpr;
import org.jaxen.function.BooleanFunction;
import org.jaxen.function.NumberFunction;
import org.jaxen.function.StringFunction;
import org.jaxen.saxpath.SAXPathException;
import org.jaxen.saxpath.XPathReader;
import org.jaxen.saxpath.XPathSyntaxException;
import org.jaxen.saxpath.helpers.XPathReaderFactory;
import org.jaxen.util.SingletonList;

public class BaseXPath implements Serializable, XPath {
  private static final long serialVersionUID = -1993731281300293168L;
  
  private final String exprText;
  
  private Navigator navigator;
  
  private ContextSupport support;
  
  private final XPathExpr xpath;
  
  protected BaseXPath(String paramString) {
    try {
      XPathReader xPathReader = XPathReaderFactory.createReader();
      JaxenHandler jaxenHandler = new JaxenHandler();
      xPathReader.setXPathHandler(jaxenHandler);
      xPathReader.parse(paramString);
      this.xpath = jaxenHandler.getXPathExpr();
      this.exprText = paramString;
      return;
    } catch (XPathSyntaxException xPathSyntaxException) {
      throw new XPathSyntaxException(xPathSyntaxException);
    } catch (SAXPathException sAXPathException) {
      throw new JaxenException(sAXPathException);
    } 
  }
  
  public BaseXPath(String paramString, Navigator paramNavigator) {
    this(paramString);
    this.navigator = paramNavigator;
  }
  
  public void addNamespace(String paramString1, String paramString2) {
    NamespaceContext namespaceContext = getNamespaceContext();
    if (namespaceContext instanceof SimpleNamespaceContext) {
      ((SimpleNamespaceContext)namespaceContext).addNamespace(paramString1, paramString2);
      return;
    } 
    throw new JaxenException("Operation not permitted while using a non-simple namespace context.");
  }
  
  public boolean booleanValueOf(Object paramObject) {
    paramObject = getContext(paramObject);
    List list = selectNodesForContext((Context)paramObject);
    return (list == null) ? false : BooleanFunction.evaluate(list, paramObject.getNavigator()).booleanValue();
  }
  
  protected FunctionContext createFunctionContext() {
    return XPathFunctionContext.getInstance();
  }
  
  protected NamespaceContext createNamespaceContext() {
    return new SimpleNamespaceContext();
  }
  
  protected VariableContext createVariableContext() {
    return new SimpleVariableContext();
  }
  
  public String debug() {
    return this.xpath.toString();
  }
  
  public Object evaluate(Object paramObject) {
    paramObject = selectNodes(paramObject);
    if (paramObject != null && paramObject.size() == 1) {
      Object object = paramObject.get(0);
      if (object instanceof String || object instanceof Number || object instanceof Boolean)
        return object; 
    } 
    return paramObject;
  }
  
  public Context getContext(Object paramObject) {
    if (paramObject instanceof Context)
      return (Context)paramObject; 
    Context context = new Context(getContextSupport());
    if (paramObject instanceof List) {
      context.setNodeSet((List)paramObject);
      return context;
    } 
    context.setNodeSet((List)new SingletonList(paramObject));
    return context;
  }
  
  protected ContextSupport getContextSupport() {
    if (this.support == null)
      this.support = new ContextSupport(createNamespaceContext(), createFunctionContext(), createVariableContext(), getNavigator()); 
    return this.support;
  }
  
  public FunctionContext getFunctionContext() {
    return getContextSupport().getFunctionContext();
  }
  
  public NamespaceContext getNamespaceContext() {
    return getContextSupport().getNamespaceContext();
  }
  
  public Navigator getNavigator() {
    return this.navigator;
  }
  
  public Expr getRootExpr() {
    return this.xpath.getRootExpr();
  }
  
  public VariableContext getVariableContext() {
    return getContextSupport().getVariableContext();
  }
  
  public Number numberValueOf(Object paramObject) {
    paramObject = getContext(paramObject);
    return NumberFunction.evaluate(selectSingleNodeForContext((Context)paramObject), paramObject.getNavigator());
  }
  
  public List selectNodes(Object paramObject) {
    return selectNodesForContext(getContext(paramObject));
  }
  
  protected List selectNodesForContext(Context paramContext) {
    return this.xpath.asList(paramContext);
  }
  
  public Object selectSingleNode(Object paramObject) {
    paramObject = selectNodes(paramObject);
    return paramObject.isEmpty() ? null : paramObject.get(0);
  }
  
  protected Object selectSingleNodeForContext(Context paramContext) {
    List list = selectNodesForContext(paramContext);
    return list.isEmpty() ? null : list.get(0);
  }
  
  public void setFunctionContext(FunctionContext paramFunctionContext) {
    getContextSupport().setFunctionContext(paramFunctionContext);
  }
  
  public void setNamespaceContext(NamespaceContext paramNamespaceContext) {
    getContextSupport().setNamespaceContext(paramNamespaceContext);
  }
  
  public void setVariableContext(VariableContext paramVariableContext) {
    getContextSupport().setVariableContext(paramVariableContext);
  }
  
  public String stringValueOf(Object paramObject) {
    paramObject = getContext(paramObject);
    Object object = selectSingleNodeForContext((Context)paramObject);
    return (object == null) ? "" : StringFunction.evaluate(object, paramObject.getNavigator());
  }
  
  public String toString() {
    return this.exprText;
  }
  
  public String valueOf(Object paramObject) {
    return stringValueOf(paramObject);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\BaseXPath.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */