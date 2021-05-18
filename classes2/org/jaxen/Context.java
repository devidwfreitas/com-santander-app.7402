package org.jaxen;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class Context implements Serializable {
  private static final long serialVersionUID = 2315979994685591055L;
  
  private ContextSupport contextSupport;
  
  private List nodeSet;
  
  private int position;
  
  private int size;
  
  public Context(ContextSupport paramContextSupport) {
    this.contextSupport = paramContextSupport;
    this.nodeSet = Collections.EMPTY_LIST;
    this.size = 0;
    this.position = 0;
  }
  
  public Context duplicate() {
    Context context = new Context(getContextSupport());
    List list = getNodeSet();
    if (list != null) {
      ArrayList arrayList = new ArrayList(list.size());
      arrayList.addAll(list);
      context.setNodeSet(arrayList);
      context.setPosition(this.position);
    } 
    return context;
  }
  
  public ContextSupport getContextSupport() {
    return this.contextSupport;
  }
  
  public Function getFunction(String paramString1, String paramString2, String paramString3) {
    return getContextSupport().getFunction(paramString1, paramString2, paramString3);
  }
  
  public Navigator getNavigator() {
    return getContextSupport().getNavigator();
  }
  
  public List getNodeSet() {
    return this.nodeSet;
  }
  
  public int getPosition() {
    return this.position;
  }
  
  public int getSize() {
    return this.size;
  }
  
  public Object getVariableValue(String paramString1, String paramString2, String paramString3) {
    return getContextSupport().getVariableValue(paramString1, paramString2, paramString3);
  }
  
  public void setContextSupport(ContextSupport paramContextSupport) {
    this.contextSupport = paramContextSupport;
  }
  
  public void setNodeSet(List paramList) {
    this.nodeSet = paramList;
    this.size = paramList.size();
    if (this.position >= this.size)
      this.position = 0; 
  }
  
  public void setPosition(int paramInt) {
    this.position = paramInt;
  }
  
  public void setSize(int paramInt) {
    this.size = paramInt;
  }
  
  public String translateNamespacePrefixToUri(String paramString) {
    return getContextSupport().translateNamespacePrefixToUri(paramString);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\Context.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */