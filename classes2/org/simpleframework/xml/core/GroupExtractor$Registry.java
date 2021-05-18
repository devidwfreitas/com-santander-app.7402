package org.simpleframework.xml.core;

import java.util.Iterator;
import java.util.LinkedHashMap;
import org.simpleframework.xml.Text;

class GroupExtractor$Registry extends LinkedHashMap<Class, Label> implements Iterable<Label> {
  private LabelMap elements;
  
  private Label text;
  
  public GroupExtractor$Registry(LabelMap paramLabelMap) {
    this.elements = paramLabelMap;
  }
  
  private void registerElement(Class paramClass, Label paramLabel) {
    String str = paramLabel.getName();
    if (!this.elements.containsKey(str))
      this.elements.put(str, paramLabel); 
    if (!containsKey(paramClass))
      put(paramClass, paramLabel); 
  }
  
  private void registerText(Label paramLabel) {
    Text text = (Text)paramLabel.getContact().getAnnotation(Text.class);
    if (text != null)
      this.text = new TextListLabel(paramLabel, text); 
  }
  
  private Label resolveElement(Class paramClass) {
    while (paramClass != null) {
      Label label = get(paramClass);
      if (label != null)
        return label; 
      paramClass = paramClass.getSuperclass();
    } 
    return null;
  }
  
  private Label resolveText(Class<String> paramClass) {
    return (this.text != null && paramClass == String.class) ? this.text : null;
  }
  
  public boolean isText() {
    return (this.text != null);
  }
  
  public Iterator<Label> iterator() {
    return values().iterator();
  }
  
  public void register(Class paramClass, Label paramLabel) {
    paramLabel = new CacheLabel(paramLabel);
    registerElement(paramClass, paramLabel);
    registerText(paramLabel);
  }
  
  public Label resolve(Class paramClass) {
    Label label2 = resolveText(paramClass);
    Label label1 = label2;
    if (label2 == null)
      label1 = resolveElement(paramClass); 
    return label1;
  }
  
  public Label resolveText() {
    return resolveText(String.class);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\GroupExtractor$Registry.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */