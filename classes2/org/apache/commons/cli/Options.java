package org.apache.commons.cli;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class Options implements Serializable {
  private static final long serialVersionUID = 1L;
  
  private Map longOpts = new HashMap<Object, Object>();
  
  private Map optionGroups = new HashMap<Object, Object>();
  
  private List requiredOpts = new ArrayList();
  
  private Map shortOpts = new HashMap<Object, Object>();
  
  public Options addOption(String paramString1, String paramString2, boolean paramBoolean, String paramString3) {
    addOption(new Option(paramString1, paramString2, paramBoolean, paramString3));
    return this;
  }
  
  public Options addOption(String paramString1, boolean paramBoolean, String paramString2) {
    addOption(paramString1, null, paramBoolean, paramString2);
    return this;
  }
  
  public Options addOption(Option paramOption) {
    String str = paramOption.getKey();
    if (paramOption.hasLongOpt())
      this.longOpts.put(paramOption.getLongOpt(), paramOption); 
    if (paramOption.isRequired()) {
      if (this.requiredOpts.contains(str))
        this.requiredOpts.remove(this.requiredOpts.indexOf(str)); 
      this.requiredOpts.add(str);
    } 
    this.shortOpts.put(str, paramOption);
    return this;
  }
  
  public Options addOptionGroup(OptionGroup paramOptionGroup) {
    Iterator<Option> iterator = paramOptionGroup.getOptions().iterator();
    if (paramOptionGroup.isRequired())
      this.requiredOpts.add(paramOptionGroup); 
    while (iterator.hasNext()) {
      Option option = iterator.next();
      option.setRequired(false);
      addOption(option);
      this.optionGroups.put(option.getKey(), paramOptionGroup);
    } 
    return this;
  }
  
  public Option getOption(String paramString) {
    paramString = Util.stripLeadingHyphens(paramString);
    return this.shortOpts.containsKey(paramString) ? (Option)this.shortOpts.get(paramString) : (Option)this.longOpts.get(paramString);
  }
  
  public OptionGroup getOptionGroup(Option paramOption) {
    return (OptionGroup)this.optionGroups.get(paramOption.getKey());
  }
  
  Collection getOptionGroups() {
    return new HashSet(this.optionGroups.values());
  }
  
  public Collection getOptions() {
    return Collections.unmodifiableCollection(helpOptions());
  }
  
  public List getRequiredOptions() {
    return this.requiredOpts;
  }
  
  public boolean hasOption(String paramString) {
    paramString = Util.stripLeadingHyphens(paramString);
    return (this.shortOpts.containsKey(paramString) || this.longOpts.containsKey(paramString));
  }
  
  List helpOptions() {
    return new ArrayList(this.shortOpts.values());
  }
  
  public String toString() {
    StringBuffer stringBuffer = new StringBuffer();
    stringBuffer.append("[ Options: [ short ");
    stringBuffer.append(this.shortOpts.toString());
    stringBuffer.append(" ] [ long ");
    stringBuffer.append(this.longOpts);
    stringBuffer.append(" ]");
    return stringBuffer.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\cli\Options.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */