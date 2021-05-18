package org.simpleframework.xml.core;

import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Set;

class LabelMap extends LinkedHashMap<String, Label> implements Iterable<Label> {
  private final Policy policy;
  
  public LabelMap() {
    this((Policy)null);
  }
  
  public LabelMap(Policy paramPolicy) {
    this.policy = paramPolicy;
  }
  
  private String[] getArray(Set<String> paramSet) {
    return paramSet.<String>toArray(new String[0]);
  }
  
  public String[] getKeys() {
    HashSet<String> hashSet = new HashSet();
    for (Label label : this) {
      if (label != null) {
        String str1 = label.getPath();
        String str2 = label.getName();
        hashSet.add(str1);
        hashSet.add(str2);
      } 
    } 
    return getArray(hashSet);
  }
  
  public Label getLabel(String paramString) {
    return remove(paramString);
  }
  
  public LabelMap getLabels() {
    LabelMap labelMap = new LabelMap(this.policy);
    for (Label label : this) {
      if (label != null)
        labelMap.put(label.getPath(), label); 
    } 
    return labelMap;
  }
  
  public String[] getPaths() {
    HashSet<String> hashSet = new HashSet();
    for (Label label : this) {
      if (label != null)
        hashSet.add(label.getPath()); 
    } 
    return getArray(hashSet);
  }
  
  public boolean isStrict(Context paramContext) {
    return (this.policy == null) ? paramContext.isStrict() : ((paramContext.isStrict() && this.policy.isStrict()));
  }
  
  public Iterator<Label> iterator() {
    return values().iterator();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\LabelMap.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */