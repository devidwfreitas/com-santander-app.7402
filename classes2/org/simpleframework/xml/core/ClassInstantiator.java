package org.simpleframework.xml.core;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class ClassInstantiator implements Instantiator {
  private final List<Creator> creators;
  
  private final Detail detail;
  
  private final Creator primary;
  
  private final ParameterMap registry;
  
  public ClassInstantiator(List<Creator> paramList, Creator paramCreator, ParameterMap paramParameterMap, Detail paramDetail) {
    this.creators = paramList;
    this.registry = paramParameterMap;
    this.primary = paramCreator;
    this.detail = paramDetail;
  }
  
  private Creator getCreator(Criteria paramCriteria) {
    Creator creator = this.primary;
    Iterator<Creator> iterator = this.creators.iterator();
    double d = 0.0D;
    while (iterator.hasNext()) {
      Creator creator1 = iterator.next();
      double d1 = creator1.getScore(paramCriteria);
      if (d1 > d) {
        creator = creator1;
        d = d1;
      } 
    } 
    return creator;
  }
  
  public List<Creator> getCreators() {
    return new ArrayList<Creator>(this.creators);
  }
  
  public Object getInstance() {
    return this.primary.getInstance();
  }
  
  public Object getInstance(Criteria paramCriteria) {
    Creator creator = getCreator(paramCriteria);
    if (creator == null)
      throw new PersistenceException("Constructor not matched for %s", new Object[] { this.detail }); 
    return creator.getInstance(paramCriteria);
  }
  
  public Parameter getParameter(String paramString) {
    return this.registry.get(paramString);
  }
  
  public List<Parameter> getParameters() {
    return this.registry.getAll();
  }
  
  public boolean isDefault() {
    return (this.creators.size() <= 1) ? ((this.primary != null)) : false;
  }
  
  public String toString() {
    return String.format("creator for %s", new Object[] { this.detail });
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\ClassInstantiator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */