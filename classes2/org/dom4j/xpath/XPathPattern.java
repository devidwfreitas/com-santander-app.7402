package org.dom4j.xpath;

import java.util.ArrayList;
import org.dom4j.InvalidXPathException;
import org.dom4j.Node;
import org.dom4j.NodeType;
import org.dom4j.XPathException;
import org.dom4j.rule.Pattern;
import org.jaxen.Context;
import org.jaxen.ContextSupport;
import org.jaxen.JaxenException;
import org.jaxen.NamespaceContext;
import org.jaxen.SimpleNamespaceContext;
import org.jaxen.SimpleVariableContext;
import org.jaxen.VariableContext;
import org.jaxen.XPathFunctionContext;
import org.jaxen.dom4j.DocumentNavigator;
import org.jaxen.pattern.Pattern;
import org.jaxen.pattern.PatternParser;
import org.jaxen.saxpath.SAXPathException;

public class XPathPattern implements Pattern {
  private Context context;
  
  private Pattern pattern;
  
  private String text;
  
  public XPathPattern(String paramString) {
    this.text = paramString;
    this.context = new Context(getContextSupport());
    try {
      this.pattern = PatternParser.parse(paramString);
      return;
    } catch (SAXPathException sAXPathException) {
      throw new InvalidXPathException(paramString, sAXPathException.getMessage());
    } catch (RuntimeException runtimeException) {
      throw new InvalidXPathException(paramString);
    } 
  }
  
  public XPathPattern(Pattern paramPattern) {
    this.pattern = paramPattern;
    this.text = paramPattern.getText();
    this.context = new Context(getContextSupport());
  }
  
  protected ContextSupport getContextSupport() {
    return new ContextSupport((NamespaceContext)new SimpleNamespaceContext(), XPathFunctionContext.getInstance(), (VariableContext)new SimpleVariableContext(), DocumentNavigator.getInstance());
  }
  
  public NodeType getMatchType() {
    return NodeType.byCode(this.pattern.getMatchType());
  }
  
  public String getMatchesNodeName() {
    return this.pattern.getMatchesNodeName();
  }
  
  public double getPriority() {
    return this.pattern.getPriority();
  }
  
  public String getText() {
    return this.text;
  }
  
  public Pattern[] getUnionPatterns() {
    Pattern[] arrayOfPattern;
    Pattern[] arrayOfPattern1 = this.pattern.getUnionPatterns();
    if (arrayOfPattern1 != null) {
      int j = arrayOfPattern1.length;
      XPathPattern[] arrayOfXPathPattern = new XPathPattern[j];
      int i = 0;
      while (true) {
        arrayOfPattern = (Pattern[])arrayOfXPathPattern;
        if (i < j) {
          arrayOfXPathPattern[i] = new XPathPattern(arrayOfPattern1[i]);
          i++;
          continue;
        } 
        break;
      } 
    } else {
      arrayOfPattern = null;
    } 
    return arrayOfPattern;
  }
  
  protected void handleJaxenException(JaxenException paramJaxenException) {
    throw new XPathException(this.text, paramJaxenException);
  }
  
  public boolean matches(Node paramNode) {
    try {
      ArrayList<Node> arrayList = new ArrayList(1);
      arrayList.add(paramNode);
      this.context.setNodeSet(arrayList);
      return this.pattern.matches(paramNode, this.context);
    } catch (JaxenException jaxenException) {
      handleJaxenException(jaxenException);
      return false;
    } 
  }
  
  public void setVariableContext(VariableContext paramVariableContext) {
    this.context.getContextSupport().setVariableContext(paramVariableContext);
  }
  
  public String toString() {
    return "[XPathPattern: text: " + this.text + " Pattern: " + this.pattern + "]";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\xpath\XPathPattern.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */