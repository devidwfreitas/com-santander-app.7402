package org.apache.commons.cli;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class Option implements Serializable, Cloneable {
  public static final int UNINITIALIZED = -1;
  
  public static final int UNLIMITED_VALUES = -2;
  
  private static final long serialVersionUID = 1L;
  
  private String argName = "arg";
  
  private String description;
  
  private String longOpt;
  
  private int numberOfArgs = -1;
  
  private String opt;
  
  private boolean optionalArg;
  
  private boolean required;
  
  private Object type;
  
  private List values = new ArrayList();
  
  private char valuesep;
  
  public Option(String paramString1, String paramString2) {
    this(paramString1, null, false, paramString2);
  }
  
  public Option(String paramString1, String paramString2, boolean paramBoolean, String paramString3) {
    OptionValidator.validateOption(paramString1);
    this.opt = paramString1;
    this.longOpt = paramString2;
    if (paramBoolean)
      this.numberOfArgs = 1; 
    this.description = paramString3;
  }
  
  public Option(String paramString1, boolean paramBoolean, String paramString2) {
    this(paramString1, null, paramBoolean, paramString2);
  }
  
  private void add(String paramString) {
    if (this.numberOfArgs > 0 && this.values.size() > this.numberOfArgs - 1)
      throw new RuntimeException("Cannot add value, list full."); 
    this.values.add(paramString);
  }
  
  private boolean hasNoValues() {
    return this.values.isEmpty();
  }
  
  private void processValue(String paramString) {
    String str = paramString;
    if (hasValueSeparator()) {
      char c = getValueSeparator();
      int i = paramString.indexOf(c);
      while (true) {
        str = paramString;
        if (i != -1)
          if (this.values.size() == this.numberOfArgs - 1) {
            str = paramString;
          } else {
            add(paramString.substring(0, i));
            paramString = paramString.substring(i + 1);
            i = paramString.indexOf(c);
            continue;
          }  
        add(str);
        return;
      } 
    } 
    add(str);
  }
  
  public boolean addValue(String paramString) {
    throw new UnsupportedOperationException("The addValue method is not intended for client use. Subclasses should use the addValueForProcessing method instead. ");
  }
  
  void addValueForProcessing(String paramString) {
    switch (this.numberOfArgs) {
      default:
        processValue(paramString);
        return;
      case -1:
        break;
    } 
    throw new RuntimeException("NO_ARGS_ALLOWED");
  }
  
  void clearValues() {
    this.values.clear();
  }
  
  public Object clone() {
    try {
      Option option = (Option)super.clone();
      option.values = new ArrayList(this.values);
      return option;
    } catch (CloneNotSupportedException cloneNotSupportedException) {
      throw new RuntimeException("A CloneNotSupportedException was thrown: " + cloneNotSupportedException.getMessage());
    } 
  }
  
  public boolean equals(Object paramObject) {
    if (this != paramObject) {
      if (paramObject == null || getClass() != paramObject.getClass())
        return false; 
      paramObject = paramObject;
      if ((this.opt != null) ? !this.opt.equals(((Option)paramObject).opt) : (((Option)paramObject).opt != null))
        return false; 
      if ((this.longOpt != null) ? !this.longOpt.equals(((Option)paramObject).longOpt) : (((Option)paramObject).longOpt != null))
        return false; 
    } 
    return true;
  }
  
  public String getArgName() {
    return this.argName;
  }
  
  public int getArgs() {
    return this.numberOfArgs;
  }
  
  public String getDescription() {
    return this.description;
  }
  
  public int getId() {
    return getKey().charAt(0);
  }
  
  String getKey() {
    return (this.opt == null) ? this.longOpt : this.opt;
  }
  
  public String getLongOpt() {
    return this.longOpt;
  }
  
  public String getOpt() {
    return this.opt;
  }
  
  public Object getType() {
    return this.type;
  }
  
  public String getValue() {
    return hasNoValues() ? null : this.values.get(0);
  }
  
  public String getValue(int paramInt) {
    return hasNoValues() ? null : this.values.get(paramInt);
  }
  
  public String getValue(String paramString) {
    String str = getValue();
    if (str != null)
      paramString = str; 
    return paramString;
  }
  
  public char getValueSeparator() {
    return this.valuesep;
  }
  
  public String[] getValues() {
    return hasNoValues() ? null : (String[])this.values.toArray((Object[])new String[this.values.size()]);
  }
  
  public List getValuesList() {
    return this.values;
  }
  
  public boolean hasArg() {
    return (this.numberOfArgs > 0 || this.numberOfArgs == -2);
  }
  
  public boolean hasArgName() {
    return (this.argName != null && this.argName.length() > 0);
  }
  
  public boolean hasArgs() {
    return (this.numberOfArgs > 1 || this.numberOfArgs == -2);
  }
  
  public boolean hasLongOpt() {
    return (this.longOpt != null);
  }
  
  public boolean hasOptionalArg() {
    return this.optionalArg;
  }
  
  public boolean hasValueSeparator() {
    return (this.valuesep > '\000');
  }
  
  public int hashCode() {
    byte b;
    int i = 0;
    if (this.opt != null) {
      b = this.opt.hashCode();
    } else {
      b = 0;
    } 
    if (this.longOpt != null)
      i = this.longOpt.hashCode(); 
    return b * 31 + i;
  }
  
  public boolean isRequired() {
    return this.required;
  }
  
  public void setArgName(String paramString) {
    this.argName = paramString;
  }
  
  public void setArgs(int paramInt) {
    this.numberOfArgs = paramInt;
  }
  
  public void setDescription(String paramString) {
    this.description = paramString;
  }
  
  public void setLongOpt(String paramString) {
    this.longOpt = paramString;
  }
  
  public void setOptionalArg(boolean paramBoolean) {
    this.optionalArg = paramBoolean;
  }
  
  public void setRequired(boolean paramBoolean) {
    this.required = paramBoolean;
  }
  
  public void setType(Object paramObject) {
    this.type = paramObject;
  }
  
  public void setValueSeparator(char paramChar) {
    this.valuesep = paramChar;
  }
  
  public String toString() {
    StringBuffer stringBuffer = (new StringBuffer()).append("[ option: ");
    stringBuffer.append(this.opt);
    if (this.longOpt != null)
      stringBuffer.append(" ").append(this.longOpt); 
    stringBuffer.append(" ");
    if (hasArgs()) {
      stringBuffer.append("[ARG...]");
    } else if (hasArg()) {
      stringBuffer.append(" [ARG]");
    } 
    stringBuffer.append(" :: ").append(this.description);
    if (this.type != null)
      stringBuffer.append(" :: ").append(this.type); 
    stringBuffer.append(" ]");
    return stringBuffer.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\cli\Option.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */