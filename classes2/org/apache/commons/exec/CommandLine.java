package org.apache.commons.exec;

import java.io.File;
import java.util.HashMap;
import java.util.Map;
import java.util.Vector;
import org.apache.commons.exec.util.StringUtils;

public class CommandLine {
  private final Vector arguments = new Vector();
  
  private final String executable;
  
  private final boolean isFile;
  
  private Map substitutionMap;
  
  public CommandLine(File paramFile) {
    this.isFile = true;
    this.executable = getExecutable(paramFile.getAbsolutePath());
  }
  
  public CommandLine(String paramString) {
    this.isFile = false;
    this.executable = getExecutable(paramString);
  }
  
  public CommandLine(CommandLine paramCommandLine) {
    this.executable = paramCommandLine.getExecutable();
    this.isFile = paramCommandLine.isFile();
    this.arguments.addAll(paramCommandLine.arguments);
    if (paramCommandLine.getSubstitutionMap() != null) {
      this.substitutionMap = new HashMap<Object, Object>();
      for (Object object : paramCommandLine.substitutionMap.keySet())
        this.substitutionMap.put(object, paramCommandLine.getSubstitutionMap().get(object)); 
    } 
  }
  
  private String expandArgument(String paramString) {
    return StringUtils.stringSubstitution(paramString, getSubstitutionMap(), true).toString();
  }
  
  private String getExecutable(String paramString) {
    if (paramString == null)
      throw new IllegalArgumentException("Executable can not be null"); 
    if (paramString.trim().length() == 0)
      throw new IllegalArgumentException("Executable can not be empty"); 
    return StringUtils.fixFileSeparatorChar(paramString);
  }
  
  public static CommandLine parse(String paramString) {
    return parse(paramString, null);
  }
  
  public static CommandLine parse(String paramString, Map paramMap) {
    if (paramString == null)
      throw new IllegalArgumentException("Command line can not be null"); 
    if (paramString.trim().length() == 0)
      throw new IllegalArgumentException("Command line can not be empty"); 
    String[] arrayOfString = translateCommandline(paramString);
    CommandLine commandLine = new CommandLine(arrayOfString[0]);
    commandLine.setSubstitutionMap(paramMap);
    for (int i = 1; i < arrayOfString.length; i++)
      commandLine.addArgument(arrayOfString[i]); 
    return commandLine;
  }
  
  private static String[] translateCommandline(String paramString) {
    // Byte code:
    //   0: aload_0
    //   1: ifnull -> 11
    //   4: aload_0
    //   5: invokevirtual length : ()I
    //   8: ifne -> 16
    //   11: iconst_0
    //   12: anewarray java/lang/String
    //   15: areturn
    //   16: new java/util/StringTokenizer
    //   19: dup
    //   20: aload_0
    //   21: ldc '"' '
    //   23: iconst_1
    //   24: invokespecial <init> : (Ljava/lang/String;Ljava/lang/String;Z)V
    //   27: astore #7
    //   29: new java/util/Vector
    //   32: dup
    //   33: invokespecial <init> : ()V
    //   36: astore #6
    //   38: new java/lang/StringBuffer
    //   41: dup
    //   42: invokespecial <init> : ()V
    //   45: astore #4
    //   47: iconst_0
    //   48: istore_2
    //   49: iconst_0
    //   50: istore_1
    //   51: aload #7
    //   53: invokevirtual hasMoreTokens : ()Z
    //   56: ifeq -> 259
    //   59: aload #7
    //   61: invokevirtual nextToken : ()Ljava/lang/String;
    //   64: astore #5
    //   66: iload_2
    //   67: tableswitch default -> 88, 1 -> 115, 2 -> 143
    //   88: ldc '''
    //   90: aload #5
    //   92: invokevirtual equals : (Ljava/lang/Object;)Z
    //   95: ifeq -> 171
    //   98: iconst_1
    //   99: istore_3
    //   100: aload #4
    //   102: astore #5
    //   104: iconst_0
    //   105: istore_1
    //   106: aload #5
    //   108: astore #4
    //   110: iload_3
    //   111: istore_2
    //   112: goto -> 51
    //   115: ldc '''
    //   117: aload #5
    //   119: invokevirtual equals : (Ljava/lang/Object;)Z
    //   122: ifeq -> 132
    //   125: iconst_1
    //   126: istore_1
    //   127: iconst_0
    //   128: istore_2
    //   129: goto -> 51
    //   132: aload #4
    //   134: aload #5
    //   136: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   139: pop
    //   140: goto -> 51
    //   143: ldc '"'
    //   145: aload #5
    //   147: invokevirtual equals : (Ljava/lang/Object;)Z
    //   150: ifeq -> 160
    //   153: iconst_1
    //   154: istore_1
    //   155: iconst_0
    //   156: istore_2
    //   157: goto -> 51
    //   160: aload #4
    //   162: aload #5
    //   164: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   167: pop
    //   168: goto -> 51
    //   171: ldc '"'
    //   173: aload #5
    //   175: invokevirtual equals : (Ljava/lang/Object;)Z
    //   178: ifeq -> 190
    //   181: iconst_2
    //   182: istore_3
    //   183: aload #4
    //   185: astore #5
    //   187: goto -> 104
    //   190: ldc ' '
    //   192: aload #5
    //   194: invokevirtual equals : (Ljava/lang/Object;)Z
    //   197: ifeq -> 242
    //   200: iload_1
    //   201: ifne -> 218
    //   204: aload #4
    //   206: astore #5
    //   208: iload_2
    //   209: istore_3
    //   210: aload #4
    //   212: invokevirtual length : ()I
    //   215: ifeq -> 104
    //   218: aload #6
    //   220: aload #4
    //   222: invokevirtual toString : ()Ljava/lang/String;
    //   225: invokevirtual addElement : (Ljava/lang/Object;)V
    //   228: new java/lang/StringBuffer
    //   231: dup
    //   232: invokespecial <init> : ()V
    //   235: astore #5
    //   237: iload_2
    //   238: istore_3
    //   239: goto -> 104
    //   242: aload #4
    //   244: aload #5
    //   246: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   249: pop
    //   250: aload #4
    //   252: astore #5
    //   254: iload_2
    //   255: istore_3
    //   256: goto -> 104
    //   259: iload_1
    //   260: ifne -> 271
    //   263: aload #4
    //   265: invokevirtual length : ()I
    //   268: ifeq -> 281
    //   271: aload #6
    //   273: aload #4
    //   275: invokevirtual toString : ()Ljava/lang/String;
    //   278: invokevirtual addElement : (Ljava/lang/Object;)V
    //   281: iload_2
    //   282: iconst_1
    //   283: if_icmpeq -> 291
    //   286: iload_2
    //   287: iconst_2
    //   288: if_icmpne -> 318
    //   291: new java/lang/IllegalArgumentException
    //   294: dup
    //   295: new java/lang/StringBuffer
    //   298: dup
    //   299: invokespecial <init> : ()V
    //   302: ldc 'Unbalanced quotes in '
    //   304: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   307: aload_0
    //   308: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   311: invokevirtual toString : ()Ljava/lang/String;
    //   314: invokespecial <init> : (Ljava/lang/String;)V
    //   317: athrow
    //   318: aload #6
    //   320: invokevirtual size : ()I
    //   323: anewarray java/lang/String
    //   326: astore_0
    //   327: aload #6
    //   329: aload_0
    //   330: invokevirtual copyInto : ([Ljava/lang/Object;)V
    //   333: aload_0
    //   334: areturn
  }
  
  public CommandLine addArgument(String paramString) {
    return addArgument(paramString, true);
  }
  
  public CommandLine addArgument(String paramString, boolean paramBoolean) {
    if (paramString == null)
      return this; 
    if (paramBoolean)
      StringUtils.quoteArgument(paramString); 
    this.arguments.add(new CommandLine$Argument(this, paramString, paramBoolean, null));
    return this;
  }
  
  public CommandLine addArguments(String paramString) {
    return addArguments(paramString, true);
  }
  
  public CommandLine addArguments(String paramString, boolean paramBoolean) {
    if (paramString != null)
      addArguments(translateCommandline(paramString), paramBoolean); 
    return this;
  }
  
  public CommandLine addArguments(String[] paramArrayOfString) {
    return addArguments(paramArrayOfString, true);
  }
  
  public CommandLine addArguments(String[] paramArrayOfString, boolean paramBoolean) {
    if (paramArrayOfString != null)
      for (int i = 0; i < paramArrayOfString.length; i++)
        addArgument(paramArrayOfString[i], paramBoolean);  
    return this;
  }
  
  public String[] getArguments() {
    String[] arrayOfString = new String[this.arguments.size()];
    for (int i = 0; i < arrayOfString.length; i++) {
      CommandLine$Argument commandLine$Argument = this.arguments.get(i);
      String str = expandArgument(CommandLine$Argument.access$100(commandLine$Argument));
      if (CommandLine$Argument.access$200(commandLine$Argument))
        str = StringUtils.quoteArgument(str); 
      arrayOfString[i] = str;
    } 
    return arrayOfString;
  }
  
  public String getExecutable() {
    return StringUtils.fixFileSeparatorChar(expandArgument(this.executable));
  }
  
  public Map getSubstitutionMap() {
    return this.substitutionMap;
  }
  
  public boolean isFile() {
    return this.isFile;
  }
  
  public void setSubstitutionMap(Map paramMap) {
    this.substitutionMap = paramMap;
  }
  
  public String toString() {
    return "[" + StringUtils.toString(toStrings(), ", ") + "]";
  }
  
  public String[] toStrings() {
    String[] arrayOfString = new String[this.arguments.size() + 1];
    arrayOfString[0] = getExecutable();
    System.arraycopy(getArguments(), 0, arrayOfString, 1, arrayOfString.length - 1);
    return arrayOfString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\exec\CommandLine.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */