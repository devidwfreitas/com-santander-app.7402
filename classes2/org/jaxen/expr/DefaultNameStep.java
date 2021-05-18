package org.jaxen.expr;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.jaxen.Context;
import org.jaxen.ContextSupport;
import org.jaxen.Navigator;
import org.jaxen.UnresolvableException;
import org.jaxen.expr.iter.IterableAxis;

public class DefaultNameStep extends DefaultStep implements NameStep {
  private static final long serialVersionUID = 428414912247718390L;
  
  private boolean hasPrefix;
  
  private String localName;
  
  private boolean matchesAnyName;
  
  private String prefix;
  
  public DefaultNameStep(IterableAxis paramIterableAxis, String paramString1, String paramString2, PredicateSet paramPredicateSet) {
    super(paramIterableAxis, paramPredicateSet);
    boolean bool;
    this.prefix = paramString1;
    this.localName = paramString2;
    this.matchesAnyName = "*".equals(paramString2);
    if (this.prefix != null && this.prefix.length() > 0) {
      bool = true;
    } else {
      bool = false;
    } 
    this.hasPrefix = bool;
  }
  
  private boolean hasNamespace(String paramString) {
    return (paramString != null && paramString.length() > 0);
  }
  
  public List evaluate(Context paramContext) {
    int i;
    String str = null;
    Context context = null;
    List<List> list = paramContext.getNodeSet();
    int j = list.size();
    if (j == 0)
      return Collections.EMPTY_LIST; 
    ContextSupport contextSupport = paramContext.getContextSupport();
    IterableAxis iterableAxis = getIterableAxis();
    if (!this.matchesAnyName && iterableAxis.supportsNamedAccess(contextSupport)) {
      i = 1;
    } else {
      i = 0;
    } 
    if (j == 1) {
      list = list.get(0);
      if (i) {
        String str1;
        paramContext = context;
        if (this.hasPrefix) {
          str = contextSupport.translateNamespacePrefixToUri(this.prefix);
          str1 = str;
          if (str == null)
            throw new UnresolvableException("XPath expression uses unbound namespace prefix " + this.prefix); 
        } 
        Iterator iterator1 = iterableAxis.namedAccessIterator(list, contextSupport, this.localName, this.prefix, str1);
        if (iterator1 == null || !iterator1.hasNext())
          return Collections.EMPTY_LIST; 
        ArrayList arrayList3 = new ArrayList();
        while (iterator1.hasNext())
          arrayList3.add(iterator1.next()); 
        return getPredicateSet().evaluatePredicates(arrayList3, contextSupport);
      } 
      Iterator<Context> iterator = iterableAxis.iterator(list, contextSupport);
      if (iterator == null || !iterator.hasNext())
        return Collections.EMPTY_LIST; 
      arrayList = new ArrayList(j);
      while (iterator.hasNext()) {
        context = iterator.next();
        if (matches(context, contextSupport))
          arrayList.add(context); 
      } 
      return getPredicateSet().evaluatePredicates(arrayList, contextSupport);
    } 
    IdentitySet identitySet = new IdentitySet();
    ArrayList<ArrayList<Context>> arrayList1 = new ArrayList(j);
    ArrayList<ArrayList<Context>> arrayList2 = new ArrayList(j);
    if (i) {
      String str1;
      ArrayList<Context> arrayList3 = arrayList;
      if (this.hasPrefix) {
        String str2 = contextSupport.translateNamespacePrefixToUri(this.prefix);
        str1 = str2;
        if (str2 == null)
          throw new UnresolvableException("XPath expression uses unbound namespace prefix " + this.prefix); 
      } 
      for (i = 0; i < j; i++) {
        Iterator<Object> iterator = iterableAxis.namedAccessIterator(list.get(i), contextSupport, this.localName, this.prefix, str1);
        if (iterator != null && iterator.hasNext()) {
          while (iterator.hasNext())
            arrayList1.add(iterator.next()); 
          for (Object object : getPredicateSet().evaluatePredicates(arrayList1, contextSupport)) {
            if (!identitySet.contains(object)) {
              identitySet.add(object);
              arrayList2.add(object);
            } 
          } 
          arrayList1.clear();
        } 
      } 
    } else {
      for (i = 0; i < j; i++) {
        Iterator<ArrayList<Context>> iterator = axisIterator(list.get(i), contextSupport);
        if (iterator != null && iterator.hasNext()) {
          while (iterator.hasNext()) {
            arrayList = iterator.next();
            if (matches(arrayList, contextSupport))
              arrayList1.add(arrayList); 
          } 
          for (ArrayList<Context> arrayList : (Iterable<ArrayList<Context>>)getPredicateSet().evaluatePredicates(arrayList1, contextSupport)) {
            if (!identitySet.contains(arrayList)) {
              identitySet.add(arrayList);
              arrayList2.add(arrayList);
            } 
          } 
          arrayList1.clear();
        } 
      } 
    } 
    return arrayList2;
  }
  
  public String getLocalName() {
    return this.localName;
  }
  
  public String getPrefix() {
    return this.prefix;
  }
  
  public String getText() {
    StringBuffer stringBuffer = new StringBuffer(64);
    stringBuffer.append(getAxisName()).append("::");
    if (getPrefix() != null && getPrefix().length() > 0)
      stringBuffer.append(getPrefix()).append(':'); 
    return stringBuffer.append(getLocalName()).append(super.getText()).toString();
  }
  
  public boolean isMatchesAnyName() {
    return this.matchesAnyName;
  }
  
  public boolean matches(Object paramObject, ContextSupport paramContextSupport) {
    String str1;
    String str2;
    String str3 = null;
    Navigator navigator = paramContextSupport.getNavigator();
    if (navigator.isElement(paramObject)) {
      str2 = navigator.getElementName(paramObject);
      paramObject = navigator.getElementNamespaceUri(paramObject);
    } else {
      if (navigator.isText(paramObject))
        return false; 
      if (navigator.isAttribute(paramObject)) {
        if (getAxis() != 9)
          return false; 
        str2 = navigator.getAttributeName(paramObject);
        paramObject = navigator.getAttributeNamespaceUri(paramObject);
      } else {
        if (navigator.isDocument(paramObject))
          return false; 
        if (navigator.isNamespace(paramObject)) {
          if (getAxis() != 10)
            return false; 
          str2 = navigator.getNamespacePrefix(paramObject);
          paramObject = null;
        } else {
          return false;
        } 
      } 
    } 
    if (this.hasPrefix) {
      str3 = paramContextSupport.translateNamespacePrefixToUri(this.prefix);
      str1 = str3;
      if (str3 == null)
        throw new UnresolvableException("Cannot resolve namespace prefix '" + this.prefix + "'"); 
    } else {
      str1 = str3;
      if (this.matchesAnyName)
        return true; 
    } 
    return (hasNamespace(str1) != hasNamespace((String)paramObject)) ? false : ((this.matchesAnyName || str2.equals(getLocalName())) ? matchesNamespaceURIs(str1, (String)paramObject) : false);
  }
  
  protected boolean matchesNamespaceURIs(String paramString1, String paramString2) {
    return (paramString1 != paramString2) ? ((paramString1 == null) ? (!(paramString2.length() != 0)) : ((paramString2 == null) ? (!(paramString1.length() != 0)) : paramString1.equals(paramString2))) : true;
  }
  
  public String toString() {
    if ("".equals(getPrefix())) {
      String str1 = getLocalName();
      return "[(DefaultNameStep): " + str1 + "]";
    } 
    String str = getPrefix() + ":" + getLocalName();
    return "[(DefaultNameStep): " + str + "]";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\expr\DefaultNameStep.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */