package org.jaxen.javabean;

import java.util.ArrayList;
import java.util.List;
import org.jaxen.BaseXPath;
import org.jaxen.Context;

public class JavaBeanXPath extends BaseXPath {
  private static final long serialVersionUID = -1567521943360266313L;
  
  public JavaBeanXPath(String paramString) {
    super(paramString, DocumentNavigator.getInstance());
  }
  
  public Object evaluate(Object paramObject) {
    Object object = super.evaluate(paramObject);
    if (object instanceof Element)
      return ((Element)object).getObject(); 
    paramObject = object;
    if (object instanceof java.util.Collection) {
      paramObject = new ArrayList();
      for (Element element : object) {
        if (element instanceof Element) {
          paramObject.add(((Element)element).getObject());
          continue;
        } 
        paramObject.add(element);
      } 
      return paramObject;
    } 
    return paramObject;
  }
  
  protected Context getContext(Object paramObject) {
    if (paramObject instanceof Context)
      return (Context)paramObject; 
    if (paramObject instanceof Element)
      return super.getContext(paramObject); 
    if (paramObject instanceof List) {
      ArrayList<Element> arrayList = new ArrayList();
      paramObject = ((List)paramObject).iterator();
      while (paramObject.hasNext())
        arrayList.add(new Element(null, "root", paramObject.next())); 
      return super.getContext(arrayList);
    } 
    return super.getContext(new Element(null, "root", paramObject));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\javabean\JavaBeanXPath.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */