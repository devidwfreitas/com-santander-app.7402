package org.apache.commons.cli;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Properties;

public class CommandLine implements Serializable {
  private static final long serialVersionUID = 1L;
  
  private List args = new LinkedList();
  
  private List options = new ArrayList();
  
  private Option resolveOption(String paramString) {
    paramString = Util.stripLeadingHyphens(paramString);
    for (Option option : this.options) {
      if (paramString.equals(option.getOpt()))
        return option; 
      if (paramString.equals(option.getLongOpt()))
        return option; 
    } 
    return null;
  }
  
  void addArg(String paramString) {
    this.args.add(paramString);
  }
  
  void addOption(Option paramOption) {
    this.options.add(paramOption);
  }
  
  public List getArgList() {
    return this.args;
  }
  
  public String[] getArgs() {
    String[] arrayOfString = new String[this.args.size()];
    this.args.toArray((Object[])arrayOfString);
    return arrayOfString;
  }
  
  public Object getOptionObject(char paramChar) {
    return getOptionObject(String.valueOf(paramChar));
  }
  
  public Object getOptionObject(String paramString) {
    try {
      return getParsedOptionValue(paramString);
    } catch (ParseException parseException) {
      System.err.println("Exception found converting " + paramString + " to desired type: " + parseException.getMessage());
      return null;
    } 
  }
  
  public Properties getOptionProperties(String paramString) {
    Properties properties = new Properties();
    for (Option option : this.options) {
      if (paramString.equals(option.getOpt()) || paramString.equals(option.getLongOpt())) {
        List list = option.getValuesList();
        if (list.size() >= 2) {
          properties.put(list.get(0), list.get(1));
          continue;
        } 
        if (list.size() == 1)
          properties.put(list.get(0), "true"); 
      } 
    } 
    return properties;
  }
  
  public String getOptionValue(char paramChar) {
    return getOptionValue(String.valueOf(paramChar));
  }
  
  public String getOptionValue(char paramChar, String paramString) {
    return getOptionValue(String.valueOf(paramChar), paramString);
  }
  
  public String getOptionValue(String paramString) {
    String[] arrayOfString = getOptionValues(paramString);
    return (arrayOfString == null) ? null : arrayOfString[0];
  }
  
  public String getOptionValue(String paramString1, String paramString2) {
    paramString1 = getOptionValue(paramString1);
    if (paramString1 != null)
      paramString2 = paramString1; 
    return paramString2;
  }
  
  public String[] getOptionValues(char paramChar) {
    return getOptionValues(String.valueOf(paramChar));
  }
  
  public String[] getOptionValues(String paramString) {
    ArrayList arrayList = new ArrayList();
    for (Option option : this.options) {
      if (paramString.equals(option.getOpt()) || paramString.equals(option.getLongOpt()))
        arrayList.addAll(option.getValuesList()); 
    } 
    return arrayList.isEmpty() ? null : (String[])arrayList.toArray((Object[])new String[arrayList.size()]);
  }
  
  public Option[] getOptions() {
    List list = this.options;
    return (Option[])list.toArray((Object[])new Option[list.size()]);
  }
  
  public Object getParsedOptionValue(String paramString) {
    String str = getOptionValue(paramString);
    Option option = resolveOption(paramString);
    if (option != null) {
      Object object = option.getType();
      if (str != null)
        return TypeHandler.createValue(str, object); 
    } 
    return null;
  }
  
  public boolean hasOption(char paramChar) {
    return hasOption(String.valueOf(paramChar));
  }
  
  public boolean hasOption(String paramString) {
    return this.options.contains(resolveOption(paramString));
  }
  
  public Iterator iterator() {
    return this.options.iterator();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\cli\CommandLine.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */