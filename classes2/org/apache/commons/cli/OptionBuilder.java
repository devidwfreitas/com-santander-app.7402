package org.apache.commons.cli;

public final class OptionBuilder {
  private static String argName;
  
  private static String description;
  
  private static OptionBuilder instance;
  
  private static String longopt;
  
  private static int numberOfArgs = -1;
  
  private static boolean optionalArg;
  
  private static boolean required;
  
  private static Object type;
  
  private static char valuesep;
  
  static {
    instance = new OptionBuilder();
  }
  
  public static Option create() {
    if (longopt == null) {
      reset();
      throw new IllegalArgumentException("must specify longopt");
    } 
    return create((String)null);
  }
  
  public static Option create(char paramChar) {
    return create(String.valueOf(paramChar));
  }
  
  public static Option create(String paramString) {
    try {
      Option option = new Option(paramString, description);
      option.setLongOpt(longopt);
      option.setRequired(required);
      option.setOptionalArg(optionalArg);
      option.setArgs(numberOfArgs);
      option.setType(type);
      option.setValueSeparator(valuesep);
      option.setArgName(argName);
      return option;
    } finally {
      reset();
    } 
  }
  
  public static OptionBuilder hasArg() {
    numberOfArgs = 1;
    return instance;
  }
  
  public static OptionBuilder hasArg(boolean paramBoolean) {
    if (paramBoolean) {
      boolean bool = true;
      numberOfArgs = bool;
      return instance;
    } 
    byte b = -1;
    numberOfArgs = b;
    return instance;
  }
  
  public static OptionBuilder hasArgs() {
    numberOfArgs = -2;
    return instance;
  }
  
  public static OptionBuilder hasArgs(int paramInt) {
    numberOfArgs = paramInt;
    return instance;
  }
  
  public static OptionBuilder hasOptionalArg() {
    numberOfArgs = 1;
    optionalArg = true;
    return instance;
  }
  
  public static OptionBuilder hasOptionalArgs() {
    numberOfArgs = -2;
    optionalArg = true;
    return instance;
  }
  
  public static OptionBuilder hasOptionalArgs(int paramInt) {
    numberOfArgs = paramInt;
    optionalArg = true;
    return instance;
  }
  
  public static OptionBuilder isRequired() {
    required = true;
    return instance;
  }
  
  public static OptionBuilder isRequired(boolean paramBoolean) {
    required = paramBoolean;
    return instance;
  }
  
  private static void reset() {
    description = null;
    argName = "arg";
    longopt = null;
    type = null;
    required = false;
    numberOfArgs = -1;
    optionalArg = false;
    valuesep = Character.MIN_VALUE;
  }
  
  public static OptionBuilder withArgName(String paramString) {
    argName = paramString;
    return instance;
  }
  
  public static OptionBuilder withDescription(String paramString) {
    description = paramString;
    return instance;
  }
  
  public static OptionBuilder withLongOpt(String paramString) {
    longopt = paramString;
    return instance;
  }
  
  public static OptionBuilder withType(Object paramObject) {
    type = paramObject;
    return instance;
  }
  
  public static OptionBuilder withValueSeparator() {
    valuesep = '=';
    return instance;
  }
  
  public static OptionBuilder withValueSeparator(char paramChar) {
    valuesep = paramChar;
    return instance;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\cli\OptionBuilder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */