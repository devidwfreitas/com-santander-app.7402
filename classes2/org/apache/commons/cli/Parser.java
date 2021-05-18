package org.apache.commons.cli;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Properties;

public abstract class Parser implements CommandLineParser {
  protected CommandLine cmd;
  
  private Options options;
  
  private List requiredOptions;
  
  protected void checkRequiredOptions() {
    if (!getRequiredOptions().isEmpty())
      throw new MissingOptionException(getRequiredOptions()); 
  }
  
  protected abstract String[] flatten(Options paramOptions, String[] paramArrayOfString, boolean paramBoolean);
  
  protected Options getOptions() {
    return this.options;
  }
  
  protected List getRequiredOptions() {
    return this.requiredOptions;
  }
  
  public CommandLine parse(Options paramOptions, String[] paramArrayOfString) {
    return parse(paramOptions, paramArrayOfString, null, false);
  }
  
  public CommandLine parse(Options paramOptions, String[] paramArrayOfString, Properties paramProperties) {
    return parse(paramOptions, paramArrayOfString, paramProperties, false);
  }
  
  public CommandLine parse(Options paramOptions, String[] paramArrayOfString, Properties paramProperties, boolean paramBoolean) {
    boolean bool = false;
    Iterator<Option> iterator = paramOptions.helpOptions().iterator();
    while (iterator.hasNext())
      ((Option)iterator.next()).clearValues(); 
    setOptions(paramOptions);
    this.cmd = new CommandLine();
    String[] arrayOfString = paramArrayOfString;
    if (paramArrayOfString == null)
      arrayOfString = new String[0]; 
    ListIterator<String> listIterator = Arrays.<String>asList(flatten(getOptions(), arrayOfString, paramBoolean)).listIterator();
    label42: while (listIterator.hasNext()) {
      boolean bool1;
      String str = listIterator.next();
      if ("--".equals(str)) {
        bool1 = true;
      } else if ("-".equals(str)) {
        if (paramBoolean) {
          bool1 = true;
        } else {
          this.cmd.addArg(str);
          bool1 = bool;
        } 
      } else if (str.startsWith("-")) {
        if (paramBoolean && !getOptions().hasOption(str)) {
          this.cmd.addArg(str);
          bool1 = true;
        } else {
          processOption(str, listIterator);
          bool1 = bool;
        } 
      } else {
        this.cmd.addArg(str);
        bool1 = bool;
        if (paramBoolean)
          bool1 = true; 
      } 
      bool = bool1;
      if (bool1)
        while (true) {
          bool = bool1;
          if (listIterator.hasNext()) {
            str = listIterator.next();
            if (!"--".equals(str))
              this.cmd.addArg(str); 
            continue;
          } 
          continue label42;
        }  
    } 
    processProperties(paramProperties);
    checkRequiredOptions();
    return this.cmd;
  }
  
  public CommandLine parse(Options paramOptions, String[] paramArrayOfString, boolean paramBoolean) {
    return parse(paramOptions, paramArrayOfString, null, paramBoolean);
  }
  
  public void processArgs(Option paramOption, ListIterator<String> paramListIterator) {
    while (true) {
      if (paramListIterator.hasNext()) {
        String str = paramListIterator.next();
        if (getOptions().hasOption(str) && str.startsWith("-")) {
          paramListIterator.previous();
        } else {
          try {
            paramOption.addValueForProcessing(Util.stripLeadingAndTrailingQuotes(str));
            continue;
          } catch (RuntimeException runtimeException) {
            paramListIterator.previous();
          } 
        } 
      } 
      if (paramOption.getValues() == null && !paramOption.hasOptionalArg())
        throw new MissingArgumentException(paramOption); 
      break;
    } 
  }
  
  protected void processOption(String paramString, ListIterator paramListIterator) {
    if (!getOptions().hasOption(paramString))
      throw new UnrecognizedOptionException("Unrecognized option: " + paramString, paramString); 
    Option option = (Option)getOptions().getOption(paramString).clone();
    if (option.isRequired())
      getRequiredOptions().remove(option.getKey()); 
    if (getOptions().getOptionGroup(option) != null) {
      OptionGroup optionGroup = getOptions().getOptionGroup(option);
      if (optionGroup.isRequired())
        getRequiredOptions().remove(optionGroup); 
      optionGroup.setSelected(option);
    } 
    if (option.hasArg())
      processArgs(option, paramListIterator); 
    this.cmd.addOption(option);
  }
  
  protected void processProperties(Properties paramProperties) {
    if (paramProperties != null) {
      Enumeration<?> enumeration = paramProperties.propertyNames();
      while (true) {
        if (enumeration.hasMoreElements()) {
          String str = enumeration.nextElement().toString();
          if (!this.cmd.hasOption(str)) {
            Option option = getOptions().getOption(str);
            str = paramProperties.getProperty(str);
            if (option.hasArg()) {
              if (option.getValues() == null || (option.getValues()).length == 0)
                try {
                  option.addValueForProcessing(str);
                } catch (RuntimeException runtimeException) {} 
            } else if (!"yes".equalsIgnoreCase((String)runtimeException) && !"true".equalsIgnoreCase((String)runtimeException) && !"1".equalsIgnoreCase((String)runtimeException)) {
              return;
            } 
            this.cmd.addOption(option);
          } 
          continue;
        } 
        return;
      } 
    } 
  }
  
  protected void setOptions(Options paramOptions) {
    this.options = paramOptions;
    this.requiredOptions = new ArrayList(paramOptions.getRequiredOptions());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\cli\Parser.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */