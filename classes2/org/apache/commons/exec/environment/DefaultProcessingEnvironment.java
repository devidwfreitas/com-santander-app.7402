package org.apache.commons.exec.environment;

import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.StringReader;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;
import org.apache.commons.exec.CommandLine;
import org.apache.commons.exec.DefaultExecutor;
import org.apache.commons.exec.ExecuteStreamHandler;
import org.apache.commons.exec.OS;
import org.apache.commons.exec.PumpStreamHandler;

public class DefaultProcessingEnvironment {
  private static final String LINE_SEPARATOR = System.getProperty("line.separator");
  
  static Class class$java$lang$System;
  
  protected Map procEnvironment;
  
  static Class class$(String paramString) {
    try {
      return Class.forName(paramString);
    } catch (ClassNotFoundException classNotFoundException) {
      throw new NoClassDefFoundError(classNotFoundException.getMessage());
    } 
  }
  
  private Map createEnvironmentMap() {
    return (Map)(OS.isFamilyWindows() ? new TreeMap<Object, Object>(new DefaultProcessingEnvironment$1(this)) : new HashMap<Object, Object>());
  }
  
  private String toString(ByteArrayOutputStream paramByteArrayOutputStream) {
    if (OS.isFamilyZOS()) {
      try {
        return paramByteArrayOutputStream.toString("Cp1047");
      } catch (UnsupportedEncodingException unsupportedEncodingException) {}
    } else if (OS.isFamilyOS400()) {
      try {
        return paramByteArrayOutputStream.toString("Cp500");
      } catch (UnsupportedEncodingException unsupportedEncodingException) {}
    } 
    return paramByteArrayOutputStream.toString();
  }
  
  protected Map createProcEnvironment() {
    if (this.procEnvironment == null)
      try {
        Class clazz;
        if (class$java$lang$System == null) {
          clazz = class$("java.lang.System");
          class$java$lang$System = clazz;
        } else {
          clazz = class$java$lang$System;
        } 
        Map map = (Map)clazz.getMethod("getenv", (Class[])null).invoke(null, (Object[])null);
        this.procEnvironment = createEnvironmentMap();
        this.procEnvironment.putAll(map);
      } catch (NoSuchMethodException noSuchMethodException) {
      
      } catch (IllegalAccessException illegalAccessException) {
      
      } catch (InvocationTargetException invocationTargetException) {} 
    if (this.procEnvironment == null) {
      this.procEnvironment = createEnvironmentMap();
      BufferedReader bufferedReader = runProcEnvCommand();
      String str = null;
      while (true) {
        String str1 = bufferedReader.readLine();
        if (str1 != null) {
          if (str1.indexOf('=') == -1) {
            if (str == null) {
              str = LINE_SEPARATOR + str1;
              continue;
            } 
            str = str + LINE_SEPARATOR + str1;
            continue;
          } 
          if (str != null)
            EnvironmentUtils.addVariableToEnvironment(this.procEnvironment, str); 
          str = str1;
          continue;
        } 
        if (str != null)
          EnvironmentUtils.addVariableToEnvironment(this.procEnvironment, str); 
        break;
      } 
    } 
    return this.procEnvironment;
  }
  
  protected CommandLine getProcEnvCommand() {
    String[] arrayOfString;
    CommandLine commandLine;
    if (OS.isFamilyOS2()) {
      commandLine = (CommandLine)"cmd";
      arrayOfString = new String[] { "/c", "set" };
    } else if (OS.isFamilyWindows()) {
      String str;
      if (OS.isFamilyWin9x()) {
        str = "command.com";
      } else {
        str = "cmd";
      } 
      String[] arrayOfString1 = new String[2];
      arrayOfString1[0] = "/c";
      arrayOfString1[1] = "set";
      commandLine = (CommandLine)str;
      arrayOfString = arrayOfString1;
    } else if (OS.isFamilyZOS() || OS.isFamilyUnix()) {
      if ((new File("/bin/env")).canRead()) {
        arrayOfString = null;
        commandLine = (CommandLine)"/bin/env";
      } else if ((new File("/usr/bin/env")).canRead()) {
        arrayOfString = null;
        commandLine = (CommandLine)"/usr/bin/env";
      } else {
        arrayOfString = null;
        commandLine = (CommandLine)"env";
      } 
    } else if (OS.isFamilyNetware() || OS.isFamilyOS400()) {
      arrayOfString = null;
      commandLine = (CommandLine)"env";
    } else {
      arrayOfString = null;
      commandLine = null;
    } 
    if (commandLine != null) {
      commandLine = new CommandLine((String)commandLine);
      commandLine.addArguments(arrayOfString);
      return commandLine;
    } 
    return null;
  }
  
  public Map getProcEnvironment() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield procEnvironment : Ljava/util/Map;
    //   6: ifnonnull -> 17
    //   9: aload_0
    //   10: aload_0
    //   11: invokevirtual createProcEnvironment : ()Ljava/util/Map;
    //   14: putfield procEnvironment : Ljava/util/Map;
    //   17: aload_0
    //   18: invokespecial createEnvironmentMap : ()Ljava/util/Map;
    //   21: astore_1
    //   22: aload_1
    //   23: aload_0
    //   24: getfield procEnvironment : Ljava/util/Map;
    //   27: invokeinterface putAll : (Ljava/util/Map;)V
    //   32: aload_0
    //   33: monitorexit
    //   34: aload_1
    //   35: areturn
    //   36: astore_1
    //   37: aload_0
    //   38: monitorexit
    //   39: aload_1
    //   40: athrow
    // Exception table:
    //   from	to	target	type
    //   2	17	36	finally
    //   17	32	36	finally
  }
  
  protected BufferedReader runProcEnvCommand() {
    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
    DefaultExecutor defaultExecutor = new DefaultExecutor();
    defaultExecutor.setStreamHandler((ExecuteStreamHandler)new PumpStreamHandler(byteArrayOutputStream));
    defaultExecutor.execute(getProcEnvCommand());
    return new BufferedReader(new StringReader(toString(byteArrayOutputStream)));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\exec\environment\DefaultProcessingEnvironment.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */