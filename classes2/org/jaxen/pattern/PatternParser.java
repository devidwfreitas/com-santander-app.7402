package org.jaxen.pattern;

import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import org.jaxen.JaxenException;
import org.jaxen.JaxenHandler;
import org.jaxen.expr.DefaultFilterExpr;
import org.jaxen.expr.DefaultNameStep;
import org.jaxen.expr.DefaultStep;
import org.jaxen.expr.DefaultXPathFactory;
import org.jaxen.expr.Expr;
import org.jaxen.expr.FilterExpr;
import org.jaxen.expr.LocationPath;
import org.jaxen.expr.Predicate;
import org.jaxen.expr.PredicateSet;
import org.jaxen.expr.Step;
import org.jaxen.expr.UnionExpr;
import org.jaxen.expr.XPathFactory;
import org.jaxen.saxpath.XPathHandler;
import org.jaxen.saxpath.XPathReader;
import org.jaxen.saxpath.helpers.XPathReaderFactory;

public class PatternParser {
  private static final boolean TRACE = false;
  
  private static final boolean USE_HANDLER = false;
  
  static Class class$org$jaxen$expr$DefaultStep;
  
  static Class class$(String paramString) {
    try {
      return Class.forName(paramString);
    } catch (ClassNotFoundException classNotFoundException) {
      throw new NoClassDefFoundError(classNotFoundException.getMessage());
    } 
  }
  
  protected static LocationPathPattern convertDefaultStep(LocationPathPattern paramLocationPathPattern, DefaultStep paramDefaultStep) {
    List list = paramDefaultStep.getPredicates();
    if (!list.isEmpty()) {
      DefaultFilterExpr defaultFilterExpr = new DefaultFilterExpr(new PredicateSet());
      Iterator<Predicate> iterator = list.iterator();
      while (iterator.hasNext())
        defaultFilterExpr.addPredicate(iterator.next()); 
      paramLocationPathPattern.addFilter((FilterExpr)defaultFilterExpr);
    } 
    return paramLocationPathPattern;
  }
  
  protected static LocationPathPattern convertExpr(LocationPath paramLocationPath) {
    LocationPathPattern locationPathPattern2 = new LocationPathPattern();
    List list = paramLocationPath.getSteps();
    ListIterator<Step> listIterator = list.listIterator(list.size());
    boolean bool = true;
    LocationPathPattern locationPathPattern1;
    for (locationPathPattern1 = locationPathPattern2; listIterator.hasPrevious(); locationPathPattern1 = convertStep(locationPathPattern, step)) {
      Step step = listIterator.previous();
      if (bool) {
        locationPathPattern1 = convertStep(locationPathPattern1, step);
        bool = false;
        continue;
      } 
      LocationPathPattern locationPathPattern = locationPathPattern1;
      if (navigationStep(step)) {
        locationPathPattern = new LocationPathPattern();
        int i = step.getAxis();
        if (i == 2 || i == 12) {
          locationPathPattern1.setAncestorPattern(locationPathPattern);
        } else {
          locationPathPattern1.setParentPattern(locationPathPattern);
        } 
      } 
    } 
    if (paramLocationPath.isAbsolute())
      locationPathPattern1.setParentPattern(new LocationPathPattern(NodeTypeTest.DOCUMENT_TEST)); 
    return locationPathPattern2;
  }
  
  protected static Pattern convertExpr(Expr paramExpr) {
    UnionExpr unionExpr;
    if (paramExpr instanceof LocationPath)
      return convertExpr((LocationPath)paramExpr); 
    if (paramExpr instanceof FilterExpr) {
      LocationPathPattern locationPathPattern1 = new LocationPathPattern();
      locationPathPattern1.addFilter((FilterExpr)paramExpr);
      return locationPathPattern1;
    } 
    if (paramExpr instanceof UnionExpr) {
      unionExpr = (UnionExpr)paramExpr;
      return new UnionPattern(convertExpr(unionExpr.getLHS()), convertExpr(unionExpr.getRHS()));
    } 
    LocationPathPattern locationPathPattern = new LocationPathPattern();
    locationPathPattern.addFilter((FilterExpr)new DefaultFilterExpr((Expr)unionExpr, new PredicateSet()));
    return locationPathPattern;
  }
  
  protected static LocationPathPattern convertStep(LocationPathPattern paramLocationPathPattern, Step paramStep) {
    DefaultNameStep defaultNameStep;
    if (paramStep instanceof org.jaxen.expr.DefaultAllNodeStep) {
      if (paramStep.getAxis() == 9) {
        paramLocationPathPattern.setNodeTest(NodeTypeTest.ATTRIBUTE_TEST);
        return paramLocationPathPattern;
      } 
      paramLocationPathPattern.setNodeTest(NodeTypeTest.ELEMENT_TEST);
      return paramLocationPathPattern;
    } 
    if (paramStep instanceof org.jaxen.expr.DefaultCommentNodeStep) {
      paramLocationPathPattern.setNodeTest(NodeTypeTest.COMMENT_TEST);
      return paramLocationPathPattern;
    } 
    if (paramStep instanceof org.jaxen.expr.DefaultProcessingInstructionNodeStep) {
      paramLocationPathPattern.setNodeTest(NodeTypeTest.PROCESSING_INSTRUCTION_TEST);
      return paramLocationPathPattern;
    } 
    if (paramStep instanceof org.jaxen.expr.DefaultTextNodeStep) {
      paramLocationPathPattern.setNodeTest(TextNodeTest.SINGLETON);
      return paramLocationPathPattern;
    } 
    if (paramStep instanceof org.jaxen.expr.DefaultCommentNodeStep) {
      paramLocationPathPattern.setNodeTest(NodeTypeTest.COMMENT_TEST);
      return paramLocationPathPattern;
    } 
    if (paramStep instanceof DefaultNameStep) {
      defaultNameStep = (DefaultNameStep)paramStep;
      String str1 = defaultNameStep.getLocalName();
      String str2 = defaultNameStep.getPrefix();
      int i = defaultNameStep.getAxis();
      byte b = 1;
      if (i == 9)
        b = 2; 
      if (defaultNameStep.isMatchesAnyName()) {
        if (str2.length() == 0 || str2.equals("*")) {
          if (i == 9) {
            paramLocationPathPattern.setNodeTest(NodeTypeTest.ATTRIBUTE_TEST);
            return convertDefaultStep(paramLocationPathPattern, (DefaultStep)defaultNameStep);
          } 
          paramLocationPathPattern.setNodeTest(NodeTypeTest.ELEMENT_TEST);
          return convertDefaultStep(paramLocationPathPattern, (DefaultStep)defaultNameStep);
        } 
        paramLocationPathPattern.setNodeTest(new NamespaceTest(str2, b));
        return convertDefaultStep(paramLocationPathPattern, (DefaultStep)defaultNameStep);
      } 
      paramLocationPathPattern.setNodeTest(new NameTest(str1, b));
      return convertDefaultStep(paramLocationPathPattern, (DefaultStep)defaultNameStep);
    } 
    if (defaultNameStep instanceof DefaultStep)
      return convertDefaultStep(paramLocationPathPattern, (DefaultStep)defaultNameStep); 
    throw new JaxenException("Cannot convert: " + defaultNameStep + " to a Pattern");
  }
  
  protected static boolean navigationStep(Step paramStep) {
    if (!(paramStep instanceof DefaultNameStep)) {
      Class clazz;
      Class<?> clazz1 = paramStep.getClass();
      if (class$org$jaxen$expr$DefaultStep == null) {
        clazz = class$("org.jaxen.expr.DefaultStep");
        class$org$jaxen$expr$DefaultStep = clazz;
      } else {
        clazz = class$org$jaxen$expr$DefaultStep;
      } 
      if (clazz1.equals(clazz))
        return !paramStep.getPredicates().isEmpty(); 
    } 
    return true;
  }
  
  public static Pattern parse(String paramString) {
    XPathReader xPathReader = XPathReaderFactory.createReader();
    JaxenHandler jaxenHandler = new JaxenHandler();
    jaxenHandler.setXPathFactory((XPathFactory)new DefaultXPathFactory());
    xPathReader.setXPathHandler((XPathHandler)jaxenHandler);
    xPathReader.parse(paramString);
    return convertExpr(jaxenHandler.getXPathExpr().getRootExpr()).simplify();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\pattern\PatternParser.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */