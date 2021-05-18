package org.apache.commons.cli;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

public class HelpFormatter {
  public static final String DEFAULT_ARG_NAME = "arg";
  
  public static final int DEFAULT_DESC_PAD = 3;
  
  public static final int DEFAULT_LEFT_PAD = 1;
  
  public static final String DEFAULT_LONG_OPT_PREFIX = "--";
  
  public static final String DEFAULT_OPT_PREFIX = "-";
  
  public static final String DEFAULT_SYNTAX_PREFIX = "usage: ";
  
  public static final int DEFAULT_WIDTH = 74;
  
  public String defaultArgName = "arg";
  
  public int defaultDescPad = 3;
  
  public int defaultLeftPad = 1;
  
  public String defaultLongOptPrefix = "--";
  
  public String defaultNewLine = System.getProperty("line.separator");
  
  public String defaultOptPrefix = "-";
  
  public String defaultSyntaxPrefix = "usage: ";
  
  public int defaultWidth = 74;
  
  protected Comparator optionComparator = new HelpFormatter$OptionComparator(null);
  
  private static void appendOption(StringBuffer paramStringBuffer, Option paramOption, boolean paramBoolean) {
    if (!paramBoolean)
      paramStringBuffer.append("["); 
    if (paramOption.getOpt() != null) {
      paramStringBuffer.append("-").append(paramOption.getOpt());
    } else {
      paramStringBuffer.append("--").append(paramOption.getLongOpt());
    } 
    if (paramOption.hasArg() && paramOption.hasArgName())
      paramStringBuffer.append(" <").append(paramOption.getArgName()).append(">"); 
    if (!paramBoolean)
      paramStringBuffer.append("]"); 
  }
  
  private void appendOptionGroup(StringBuffer paramStringBuffer, OptionGroup paramOptionGroup) {
    if (!paramOptionGroup.isRequired())
      paramStringBuffer.append("["); 
    ArrayList<?> arrayList = new ArrayList(paramOptionGroup.getOptions());
    Collections.sort(arrayList, getOptionComparator());
    Iterator<?> iterator = arrayList.iterator();
    while (iterator.hasNext()) {
      appendOption(paramStringBuffer, (Option)iterator.next(), true);
      if (iterator.hasNext())
        paramStringBuffer.append(" | "); 
    } 
    if (!paramOptionGroup.isRequired())
      paramStringBuffer.append("]"); 
  }
  
  protected String createPadding(int paramInt) {
    StringBuffer stringBuffer = new StringBuffer(paramInt);
    for (int i = 0; i < paramInt; i++)
      stringBuffer.append(' '); 
    return stringBuffer.toString();
  }
  
  protected int findWrapPos(String paramString, int paramInt1, int paramInt2) {
    // Byte code:
    //   0: iconst_m1
    //   1: istore #5
    //   3: aload_1
    //   4: bipush #10
    //   6: iload_3
    //   7: invokevirtual indexOf : (II)I
    //   10: istore #6
    //   12: iload #6
    //   14: iconst_m1
    //   15: if_icmpeq -> 28
    //   18: iload #6
    //   20: istore #4
    //   22: iload #6
    //   24: iload_2
    //   25: if_icmple -> 49
    //   28: aload_1
    //   29: bipush #9
    //   31: iload_3
    //   32: invokevirtual indexOf : (II)I
    //   35: istore #4
    //   37: iload #4
    //   39: iconst_m1
    //   40: if_icmpeq -> 58
    //   43: iload #4
    //   45: iload_2
    //   46: if_icmpgt -> 58
    //   49: iload #4
    //   51: iconst_1
    //   52: iadd
    //   53: istore #4
    //   55: iload #4
    //   57: ireturn
    //   58: iload #5
    //   60: istore #4
    //   62: iload_3
    //   63: iload_2
    //   64: iadd
    //   65: aload_1
    //   66: invokevirtual length : ()I
    //   69: if_icmpge -> 55
    //   72: iload_3
    //   73: iload_2
    //   74: iadd
    //   75: istore #4
    //   77: iload #4
    //   79: iload_3
    //   80: if_icmplt -> 121
    //   83: aload_1
    //   84: iload #4
    //   86: invokevirtual charAt : (I)C
    //   89: istore #5
    //   91: iload #5
    //   93: bipush #32
    //   95: if_icmpeq -> 121
    //   98: iload #5
    //   100: bipush #10
    //   102: if_icmpeq -> 121
    //   105: iload #5
    //   107: bipush #13
    //   109: if_icmpeq -> 121
    //   112: iload #4
    //   114: iconst_1
    //   115: isub
    //   116: istore #4
    //   118: goto -> 77
    //   121: iload #4
    //   123: iload_3
    //   124: if_icmple -> 130
    //   127: iload #4
    //   129: ireturn
    //   130: iload_3
    //   131: iload_2
    //   132: iadd
    //   133: istore_2
    //   134: iload_2
    //   135: aload_1
    //   136: invokevirtual length : ()I
    //   139: if_icmpgt -> 173
    //   142: aload_1
    //   143: iload_2
    //   144: invokevirtual charAt : (I)C
    //   147: istore_3
    //   148: iload_3
    //   149: bipush #32
    //   151: if_icmpeq -> 173
    //   154: iload_3
    //   155: bipush #10
    //   157: if_icmpeq -> 173
    //   160: iload_3
    //   161: bipush #13
    //   163: if_icmpeq -> 173
    //   166: iload_2
    //   167: iconst_1
    //   168: iadd
    //   169: istore_2
    //   170: goto -> 134
    //   173: iload_2
    //   174: istore_3
    //   175: iload_2
    //   176: aload_1
    //   177: invokevirtual length : ()I
    //   180: if_icmpne -> 185
    //   183: iconst_m1
    //   184: istore_3
    //   185: iload_3
    //   186: ireturn
  }
  
  public String getArgName() {
    return this.defaultArgName;
  }
  
  public int getDescPadding() {
    return this.defaultDescPad;
  }
  
  public int getLeftPadding() {
    return this.defaultLeftPad;
  }
  
  public String getLongOptPrefix() {
    return this.defaultLongOptPrefix;
  }
  
  public String getNewLine() {
    return this.defaultNewLine;
  }
  
  public String getOptPrefix() {
    return this.defaultOptPrefix;
  }
  
  public Comparator getOptionComparator() {
    return this.optionComparator;
  }
  
  public String getSyntaxPrefix() {
    return this.defaultSyntaxPrefix;
  }
  
  public int getWidth() {
    return this.defaultWidth;
  }
  
  public void printHelp(int paramInt, String paramString1, String paramString2, Options paramOptions, String paramString3) {
    printHelp(paramInt, paramString1, paramString2, paramOptions, paramString3, false);
  }
  
  public void printHelp(int paramInt, String paramString1, String paramString2, Options paramOptions, String paramString3, boolean paramBoolean) {
    PrintWriter printWriter = new PrintWriter(System.out);
    printHelp(printWriter, paramInt, paramString1, paramString2, paramOptions, this.defaultLeftPad, this.defaultDescPad, paramString3, paramBoolean);
    printWriter.flush();
  }
  
  public void printHelp(PrintWriter paramPrintWriter, int paramInt1, String paramString1, String paramString2, Options paramOptions, int paramInt2, int paramInt3, String paramString3) {
    printHelp(paramPrintWriter, paramInt1, paramString1, paramString2, paramOptions, paramInt2, paramInt3, paramString3, false);
  }
  
  public void printHelp(PrintWriter paramPrintWriter, int paramInt1, String paramString1, String paramString2, Options paramOptions, int paramInt2, int paramInt3, String paramString3, boolean paramBoolean) {
    if (paramString1 == null || paramString1.length() == 0)
      throw new IllegalArgumentException("cmdLineSyntax not provided"); 
    if (paramBoolean) {
      printUsage(paramPrintWriter, paramInt1, paramString1, paramOptions);
    } else {
      printUsage(paramPrintWriter, paramInt1, paramString1);
    } 
    if (paramString2 != null && paramString2.trim().length() > 0)
      printWrapped(paramPrintWriter, paramInt1, paramString2); 
    printOptions(paramPrintWriter, paramInt1, paramOptions, paramInt2, paramInt3);
    if (paramString3 != null && paramString3.trim().length() > 0)
      printWrapped(paramPrintWriter, paramInt1, paramString3); 
  }
  
  public void printHelp(String paramString1, String paramString2, Options paramOptions, String paramString3) {
    printHelp(paramString1, paramString2, paramOptions, paramString3, false);
  }
  
  public void printHelp(String paramString1, String paramString2, Options paramOptions, String paramString3, boolean paramBoolean) {
    printHelp(this.defaultWidth, paramString1, paramString2, paramOptions, paramString3, paramBoolean);
  }
  
  public void printHelp(String paramString, Options paramOptions) {
    printHelp(this.defaultWidth, paramString, null, paramOptions, null, false);
  }
  
  public void printHelp(String paramString, Options paramOptions, boolean paramBoolean) {
    printHelp(this.defaultWidth, paramString, null, paramOptions, null, paramBoolean);
  }
  
  public void printOptions(PrintWriter paramPrintWriter, int paramInt1, Options paramOptions, int paramInt2, int paramInt3) {
    StringBuffer stringBuffer = new StringBuffer();
    renderOptions(stringBuffer, paramInt1, paramOptions, paramInt2, paramInt3);
    paramPrintWriter.println(stringBuffer.toString());
  }
  
  public void printUsage(PrintWriter paramPrintWriter, int paramInt, String paramString) {
    printWrapped(paramPrintWriter, paramInt, paramString.indexOf(' ') + 1 + this.defaultSyntaxPrefix.length(), this.defaultSyntaxPrefix + paramString);
  }
  
  public void printUsage(PrintWriter paramPrintWriter, int paramInt, String paramString, Options paramOptions) {
    StringBuffer stringBuffer = (new StringBuffer(this.defaultSyntaxPrefix)).append(paramString).append(" ");
    ArrayList<OptionGroup> arrayList = new ArrayList();
    ArrayList<?> arrayList1 = new ArrayList(paramOptions.getOptions());
    Collections.sort(arrayList1, getOptionComparator());
    Iterator<?> iterator = arrayList1.iterator();
    while (iterator.hasNext()) {
      Option option = (Option)iterator.next();
      OptionGroup optionGroup = paramOptions.getOptionGroup(option);
      if (optionGroup != null) {
        if (!arrayList.contains(optionGroup)) {
          arrayList.add(optionGroup);
          appendOptionGroup(stringBuffer, optionGroup);
        } 
      } else {
        appendOption(stringBuffer, option, option.isRequired());
      } 
      if (iterator.hasNext())
        stringBuffer.append(" "); 
    } 
    printWrapped(paramPrintWriter, paramInt, stringBuffer.toString().indexOf(' ') + 1, stringBuffer.toString());
  }
  
  public void printWrapped(PrintWriter paramPrintWriter, int paramInt1, int paramInt2, String paramString) {
    StringBuffer stringBuffer = new StringBuffer(paramString.length());
    renderWrappedText(stringBuffer, paramInt1, paramInt2, paramString);
    paramPrintWriter.println(stringBuffer.toString());
  }
  
  public void printWrapped(PrintWriter paramPrintWriter, int paramInt, String paramString) {
    printWrapped(paramPrintWriter, paramInt, 0, paramString);
  }
  
  protected StringBuffer renderOptions(StringBuffer paramStringBuffer, int paramInt1, Options paramOptions, int paramInt2, int paramInt3) {
    String str2 = createPadding(paramInt2);
    String str1 = createPadding(paramInt3);
    ArrayList<StringBuffer> arrayList = new ArrayList();
    List<?> list = paramOptions.helpOptions();
    Collections.sort(list, getOptionComparator());
    Iterator<?> iterator2 = list.iterator();
    paramInt2 = 0;
    while (iterator2.hasNext()) {
      Option option = (Option)iterator2.next();
      StringBuffer stringBuffer = new StringBuffer(8);
      if (option.getOpt() == null) {
        stringBuffer.append(str2).append("   " + this.defaultLongOptPrefix).append(option.getLongOpt());
      } else {
        stringBuffer.append(str2).append(this.defaultOptPrefix).append(option.getOpt());
        if (option.hasLongOpt())
          stringBuffer.append(',').append(this.defaultLongOptPrefix).append(option.getLongOpt()); 
      } 
      if (option.hasArg())
        if (option.hasArgName()) {
          stringBuffer.append(" <").append(option.getArgName()).append(">");
        } else {
          stringBuffer.append(' ');
        }  
      arrayList.add(stringBuffer);
      if (stringBuffer.length() > paramInt2)
        paramInt2 = stringBuffer.length(); 
    } 
    Iterator<?> iterator1 = list.iterator();
    int i;
    for (i = 0; iterator1.hasNext(); i++) {
      Option option = (Option)iterator1.next();
      StringBuffer stringBuffer = new StringBuffer(arrayList.get(i).toString());
      if (stringBuffer.length() < paramInt2)
        stringBuffer.append(createPadding(paramInt2 - stringBuffer.length())); 
      stringBuffer.append(str1);
      if (option.getDescription() != null)
        stringBuffer.append(option.getDescription()); 
      renderWrappedText(paramStringBuffer, paramInt1, paramInt2 + paramInt3, stringBuffer.toString());
      if (iterator1.hasNext())
        paramStringBuffer.append(this.defaultNewLine); 
    } 
    return paramStringBuffer;
  }
  
  protected StringBuffer renderWrappedText(StringBuffer paramStringBuffer, int paramInt1, int paramInt2, String paramString) {
    int j = findWrapPos(paramString, paramInt1, 0);
    if (j == -1) {
      paramStringBuffer.append(rtrim(paramString));
      return paramStringBuffer;
    } 
    paramStringBuffer.append(rtrim(paramString.substring(0, j))).append(this.defaultNewLine);
    int i = paramInt2;
    if (paramInt2 >= paramInt1)
      i = 1; 
    String str = createPadding(i);
    paramInt2 = j;
    while (true) {
      paramString = str + paramString.substring(paramInt2).trim();
      j = findWrapPos(paramString, paramInt1, 0);
      if (j == -1) {
        paramStringBuffer.append(paramString);
        return paramStringBuffer;
      } 
      paramInt2 = j;
      if (paramString.length() > paramInt1) {
        paramInt2 = j;
        if (j == i - 1)
          paramInt2 = paramInt1; 
      } 
      paramStringBuffer.append(rtrim(paramString.substring(0, paramInt2))).append(this.defaultNewLine);
    } 
  }
  
  protected String rtrim(String paramString) {
    if (paramString == null || paramString.length() == 0)
      return paramString; 
    int i;
    for (i = paramString.length(); i > 0 && Character.isWhitespace(paramString.charAt(i - 1)); i--);
    return paramString.substring(0, i);
  }
  
  public void setArgName(String paramString) {
    this.defaultArgName = paramString;
  }
  
  public void setDescPadding(int paramInt) {
    this.defaultDescPad = paramInt;
  }
  
  public void setLeftPadding(int paramInt) {
    this.defaultLeftPad = paramInt;
  }
  
  public void setLongOptPrefix(String paramString) {
    this.defaultLongOptPrefix = paramString;
  }
  
  public void setNewLine(String paramString) {
    this.defaultNewLine = paramString;
  }
  
  public void setOptPrefix(String paramString) {
    this.defaultOptPrefix = paramString;
  }
  
  public void setOptionComparator(Comparator paramComparator) {
    if (paramComparator == null) {
      this.optionComparator = new HelpFormatter$OptionComparator(null);
      return;
    } 
    this.optionComparator = paramComparator;
  }
  
  public void setSyntaxPrefix(String paramString) {
    this.defaultSyntaxPrefix = paramString;
  }
  
  public void setWidth(int paramInt) {
    this.defaultWidth = paramInt;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\cli\HelpFormatter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */