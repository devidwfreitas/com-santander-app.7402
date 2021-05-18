package org.apache.commons.cli;

public class PatternOptionBuilder {
  public static final Class CLASS_VALUE;
  
  public static final Class DATE_VALUE;
  
  public static final Class EXISTING_FILE_VALUE;
  
  public static final Class FILES_VALUE;
  
  public static final Class FILE_VALUE;
  
  public static final Class NUMBER_VALUE;
  
  public static final Class OBJECT_VALUE;
  
  public static final Class STRING_VALUE;
  
  public static final Class URL_VALUE;
  
  static Class array$Ljava$io$File;
  
  static Class class$java$io$File;
  
  static Class class$java$io$FileInputStream;
  
  static Class class$java$lang$Class;
  
  static Class class$java$lang$Number;
  
  static Class class$java$lang$Object;
  
  static Class class$java$lang$String;
  
  static Class class$java$net$URL;
  
  static Class class$java$util$Date;
  
  static {
    Class clazz;
    if (class$java$lang$String == null) {
      clazz = class$("java.lang.String");
      class$java$lang$String = clazz;
    } else {
      clazz = class$java$lang$String;
    } 
    STRING_VALUE = clazz;
    if (class$java$lang$Object == null) {
      clazz = class$("java.lang.Object");
      class$java$lang$Object = clazz;
    } else {
      clazz = class$java$lang$Object;
    } 
    OBJECT_VALUE = clazz;
    if (class$java$lang$Number == null) {
      clazz = class$("java.lang.Number");
      class$java$lang$Number = clazz;
    } else {
      clazz = class$java$lang$Number;
    } 
    NUMBER_VALUE = clazz;
    if (class$java$util$Date == null) {
      clazz = class$("java.util.Date");
      class$java$util$Date = clazz;
    } else {
      clazz = class$java$util$Date;
    } 
    DATE_VALUE = clazz;
    if (class$java$lang$Class == null) {
      clazz = class$("java.lang.Class");
      class$java$lang$Class = clazz;
    } else {
      clazz = class$java$lang$Class;
    } 
    CLASS_VALUE = clazz;
    if (class$java$io$FileInputStream == null) {
      clazz = class$("java.io.FileInputStream");
      class$java$io$FileInputStream = clazz;
    } else {
      clazz = class$java$io$FileInputStream;
    } 
    EXISTING_FILE_VALUE = clazz;
    if (class$java$io$File == null) {
      clazz = class$("java.io.File");
      class$java$io$File = clazz;
    } else {
      clazz = class$java$io$File;
    } 
    FILE_VALUE = clazz;
    if (array$Ljava$io$File == null) {
      clazz = class$("[Ljava.io.File;");
      array$Ljava$io$File = clazz;
    } else {
      clazz = array$Ljava$io$File;
    } 
    FILES_VALUE = clazz;
    if (class$java$net$URL == null) {
      clazz = class$("java.net.URL");
      class$java$net$URL = clazz;
    } else {
      clazz = class$java$net$URL;
    } 
    URL_VALUE = clazz;
  }
  
  static Class class$(String paramString) {
    try {
      return Class.forName(paramString);
    } catch (ClassNotFoundException classNotFoundException) {
      throw (new NoClassDefFoundError()).initCause(classNotFoundException);
    } 
  }
  
  public static Object getValueClass(char paramChar) {
    switch (paramChar) {
      default:
        return null;
      case '@':
        return OBJECT_VALUE;
      case ':':
        return STRING_VALUE;
      case '%':
        return NUMBER_VALUE;
      case '+':
        return CLASS_VALUE;
      case '#':
        return DATE_VALUE;
      case '<':
        return EXISTING_FILE_VALUE;
      case '>':
        return FILE_VALUE;
      case '*':
        return FILES_VALUE;
      case '/':
        break;
    } 
    return URL_VALUE;
  }
  
  public static boolean isValueCode(char paramChar) {
    return (paramChar == '@' || paramChar == ':' || paramChar == '%' || paramChar == '+' || paramChar == '#' || paramChar == '<' || paramChar == '>' || paramChar == '*' || paramChar == '/' || paramChar == '!');
  }
  
  public static Options parsePattern(String paramString) {
    boolean bool2 = true;
    Options options = new Options();
    int i = 0;
    Object object = null;
    boolean bool1 = false;
    byte b = 32;
    while (i < paramString.length()) {
      byte b1;
      boolean bool;
      Object object1;
      char c = paramString.charAt(i);
      if (!isValueCode(c)) {
        object1 = object;
        bool = bool1;
        b1 = c;
        if (b != 32) {
          if (object != null) {
            bool = true;
          } else {
            bool = false;
          } 
          OptionBuilder.hasArg(bool);
          OptionBuilder.isRequired(bool1);
          OptionBuilder.withType(object);
          options.addOption(OptionBuilder.create(b));
          object1 = null;
          bool = false;
          b1 = c;
        } 
      } else if (c == '!') {
        bool = true;
        object1 = object;
        b1 = b;
      } else {
        object1 = getValueClass(c);
        bool = bool1;
        b1 = b;
      } 
      i++;
      b = b1;
      object = object1;
      bool1 = bool;
    } 
    if (b != 32) {
      boolean bool;
      if (object != null) {
        bool = bool2;
      } else {
        bool = false;
      } 
      OptionBuilder.hasArg(bool);
      OptionBuilder.isRequired(bool1);
      OptionBuilder.withType(object);
      options.addOption(OptionBuilder.create(b));
    } 
    return options;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\cli\PatternOptionBuilder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */