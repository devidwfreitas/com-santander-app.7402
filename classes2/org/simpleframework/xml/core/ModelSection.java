package org.simpleframework.xml.core;

import java.util.ArrayList;
import java.util.Iterator;

class ModelSection implements Section {
  private LabelMap attributes;
  
  private LabelMap elements;
  
  private Model model;
  
  private ModelMap models;
  
  public ModelSection(Model paramModel) {
    this.model = paramModel;
  }
  
  public String getAttribute(String paramString) {
    Expression expression = this.model.getExpression();
    return (expression == null) ? paramString : expression.getAttribute(paramString);
  }
  
  public LabelMap getAttributes() {
    if (this.attributes == null)
      this.attributes = this.model.getAttributes(); 
    return this.attributes;
  }
  
  public Label getElement(String paramString) {
    return getElements().getLabel(paramString);
  }
  
  public LabelMap getElements() {
    if (this.elements == null)
      this.elements = this.model.getElements(); 
    return this.elements;
  }
  
  public ModelMap getModels() {
    if (this.models == null)
      this.models = this.model.getModels(); 
    return this.models;
  }
  
  public String getName() {
    return this.model.getName();
  }
  
  public String getPath(String paramString) {
    Expression expression = this.model.getExpression();
    return (expression == null) ? paramString : expression.getElement(paramString);
  }
  
  public String getPrefix() {
    return this.model.getPrefix();
  }
  
  public Section getSection(String paramString) {
    ModelList modelList = getModels().get(paramString);
    if (modelList != null) {
      Model model = modelList.take();
      if (model != null)
        return new ModelSection(model); 
    } 
    return null;
  }
  
  public Label getText() {
    return this.model.getText();
  }
  
  public boolean isSection(String paramString) {
    return (getModels().get(paramString) != null);
  }
  
  public Iterator<String> iterator() {
    ArrayList<String> arrayList = new ArrayList();
    Iterator<String> iterator = this.model.iterator();
    while (iterator.hasNext())
      arrayList.add(iterator.next()); 
    return arrayList.iterator();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\ModelSection.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */