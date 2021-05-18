package org.apache.commons.cli;

import java.io.Serializable;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class OptionGroup implements Serializable {
  private static final long serialVersionUID = 1L;
  
  private Map optionMap = new HashMap<Object, Object>();
  
  private boolean required;
  
  private String selected;
  
  public OptionGroup addOption(Option paramOption) {
    this.optionMap.put(paramOption.getKey(), paramOption);
    return this;
  }
  
  public Collection getNames() {
    return this.optionMap.keySet();
  }
  
  public Collection getOptions() {
    return this.optionMap.values();
  }
  
  public String getSelected() {
    return this.selected;
  }
  
  public boolean isRequired() {
    return this.required;
  }
  
  public void setRequired(boolean paramBoolean) {
    this.required = paramBoolean;
  }
  
  public void setSelected(Option paramOption) {
    if (this.selected == null || this.selected.equals(paramOption.getOpt())) {
      this.selected = paramOption.getOpt();
      return;
    } 
    throw new AlreadySelectedException(this, paramOption);
  }
  
  public String toString() {
    StringBuffer stringBuffer = new StringBuffer();
    Iterator<Option> iterator = getOptions().iterator();
    stringBuffer.append("[");
    while (iterator.hasNext()) {
      Option option = iterator.next();
      if (option.getOpt() != null) {
        stringBuffer.append("-");
        stringBuffer.append(option.getOpt());
      } else {
        stringBuffer.append("--");
        stringBuffer.append(option.getLongOpt());
      } 
      stringBuffer.append(" ");
      stringBuffer.append(option.getDescription());
      if (iterator.hasNext())
        stringBuffer.append(", "); 
    } 
    stringBuffer.append("]");
    return stringBuffer.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\cli\OptionGroup.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */