package org.apache.commons.io;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Locale;
import java.util.StringTokenizer;

public class FileSystemUtils {
  private static final String DF;
  
  private static final int INIT_PROBLEM = -1;
  
  private static final FileSystemUtils INSTANCE = new FileSystemUtils();
  
  private static final int OS;
  
  private static final int OTHER = 0;
  
  private static final int POSIX_UNIX = 3;
  
  private static final int UNIX = 2;
  
  private static final int WINDOWS = 1;
  
  static {
    String str2 = "df";
    try {
      str1 = System.getProperty("os.name");
      if (str1 == null)
        throw new IOException("os.name not found"); 
    } catch (Exception exception) {
      b1 = -1;
      str1 = str2;
      OS = b1;
      DF = str1;
      return;
    } 
    String str3 = str1.toLowerCase(Locale.ENGLISH);
    if (str3.indexOf("windows") != -1) {
      b1 = 1;
      str1 = str2;
    } else if (str3.indexOf("linux") != -1 || str3.indexOf("mpe/ix") != -1 || str3.indexOf("freebsd") != -1 || str3.indexOf("irix") != -1 || str3.indexOf("digital unix") != -1 || str3.indexOf("unix") != -1 || str3.indexOf("mac os x") != -1) {
      b1 = 2;
      str1 = str2;
    } else if (str3.indexOf("sun os") != -1 || str3.indexOf("sunos") != -1 || str3.indexOf("solaris") != -1) {
      str1 = "/usr/xpg4/bin/df";
      b1 = b2;
    } else {
      str1 = str2;
      b1 = b2;
      if (str3.indexOf("hp-ux") == -1) {
        int i = str3.indexOf("aix");
        str1 = str2;
        b1 = b2;
        if (i == -1) {
          b1 = 0;
          str1 = str2;
        } 
      } 
    } 
    OS = b1;
    DF = str1;
  }
  
  @Deprecated
  public static long freeSpace(String paramString) {
    return INSTANCE.freeSpaceOS(paramString, OS, false, -1L);
  }
  
  public static long freeSpaceKb() {
    return freeSpaceKb(-1L);
  }
  
  public static long freeSpaceKb(long paramLong) {
    return freeSpaceKb((new File(".")).getAbsolutePath(), paramLong);
  }
  
  public static long freeSpaceKb(String paramString) {
    return freeSpaceKb(paramString, -1L);
  }
  
  public static long freeSpaceKb(String paramString, long paramLong) {
    return INSTANCE.freeSpaceOS(paramString, OS, true, paramLong);
  }
  
  long freeSpaceOS(String paramString, int paramInt, boolean paramBoolean, long paramLong) {
    if (paramString == null)
      throw new IllegalArgumentException("Path must not be empty"); 
    switch (paramInt) {
      default:
        throw new IllegalStateException("Exception caught when determining operating system");
      case 1:
        return paramBoolean ? (freeSpaceWindows(paramString, paramLong) / 1024L) : freeSpaceWindows(paramString, paramLong);
      case 2:
        return freeSpaceUnix(paramString, paramBoolean, false, paramLong);
      case 3:
        return freeSpaceUnix(paramString, paramBoolean, true, paramLong);
      case 0:
        break;
    } 
    throw new IllegalStateException("Unsupported operating system");
  }
  
  long freeSpaceUnix(String paramString, boolean paramBoolean1, boolean paramBoolean2, long paramLong) {
    String[] arrayOfString;
    if (paramString.length() == 0)
      throw new IllegalArgumentException("Path must not be empty"); 
    String str1 = "-";
    if (paramBoolean1)
      str1 = "-" + "k"; 
    String str2 = str1;
    if (paramBoolean2)
      str2 = str1 + "P"; 
    if (str2.length() > 1) {
      arrayOfString = new String[] { DF, str2, paramString };
    } else {
      arrayOfString = new String[2];
      arrayOfString[0] = DF;
      arrayOfString[1] = paramString;
    } 
    List<String> list = performCommand(arrayOfString, 3, paramLong);
    if (list.size() < 2)
      throw new IOException("Command line '" + DF + "' did not return info as expected " + "for path '" + paramString + "'- response was " + list); 
    StringTokenizer stringTokenizer = new StringTokenizer(list.get(1), " ");
    if (stringTokenizer.countTokens() < 4) {
      if (stringTokenizer.countTokens() == 1 && list.size() >= 3) {
        stringTokenizer = new StringTokenizer(list.get(2), " ");
        stringTokenizer.nextToken();
        stringTokenizer.nextToken();
        return parseBytes(stringTokenizer.nextToken(), paramString);
      } 
      throw new IOException("Command line '" + DF + "' did not return data as expected " + "for path '" + paramString + "'- check path is valid");
    } 
    stringTokenizer.nextToken();
    stringTokenizer.nextToken();
    stringTokenizer.nextToken();
    return parseBytes(stringTokenizer.nextToken(), paramString);
  }
  
  long freeSpaceWindows(String paramString, long paramLong) {
    paramString = FilenameUtils.normalize(paramString, false);
    if (paramString.length() > 0 && paramString.charAt(0) != '"')
      paramString = "\"" + paramString + "\""; 
    List<String> list = performCommand(new String[] { "cmd.exe", "/C", "dir /a /-c " + paramString }, 2147483647, paramLong);
    int i;
    for (i = list.size() - 1; i >= 0; i--) {
      String str = list.get(i);
      if (str.length() > 0)
        return parseDir(str, paramString); 
    } 
    throw new IOException("Command line 'dir /-c' did not return any info for path '" + paramString + "'");
  }
  
  Process openProcess(String[] paramArrayOfString) {
    return Runtime.getRuntime().exec(paramArrayOfString);
  }
  
  long parseBytes(String paramString1, String paramString2) {
    long l;
    try {
      l = Long.parseLong(paramString1);
      if (l < 0L)
        throw new IOException("Command line '" + DF + "' did not find free space in response " + "for path '" + paramString2 + "'- check path is valid"); 
    } catch (NumberFormatException numberFormatException) {
      throw new IOExceptionWithCause("Command line '" + DF + "' did not return numeric data as expected " + "for path '" + paramString2 + "'- check path is valid", numberFormatException);
    } 
    return l;
  }
  
  long parseDir(String paramString1, String paramString2) {
    // Byte code:
    //   0: iconst_0
    //   1: istore #7
    //   3: aload_1
    //   4: invokevirtual length : ()I
    //   7: iconst_1
    //   8: isub
    //   9: istore #4
    //   11: iload #4
    //   13: iflt -> 220
    //   16: aload_1
    //   17: iload #4
    //   19: invokevirtual charAt : (I)C
    //   22: invokestatic isDigit : (C)Z
    //   25: ifeq -> 109
    //   28: iload #4
    //   30: iconst_1
    //   31: iadd
    //   32: istore #5
    //   34: iload #4
    //   36: iflt -> 214
    //   39: aload_1
    //   40: iload #4
    //   42: invokevirtual charAt : (I)C
    //   45: istore_3
    //   46: iload_3
    //   47: invokestatic isDigit : (C)Z
    //   50: ifne -> 118
    //   53: iload_3
    //   54: bipush #44
    //   56: if_icmpeq -> 118
    //   59: iload_3
    //   60: bipush #46
    //   62: if_icmpeq -> 118
    //   65: iload #4
    //   67: iconst_1
    //   68: iadd
    //   69: istore #6
    //   71: iload #4
    //   73: ifge -> 127
    //   76: new java/io/IOException
    //   79: dup
    //   80: new java/lang/StringBuilder
    //   83: dup
    //   84: invokespecial <init> : ()V
    //   87: ldc_w 'Command line 'dir /-c' did not return valid info for path ''
    //   90: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   93: aload_2
    //   94: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   97: ldc '''
    //   99: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   102: invokevirtual toString : ()Ljava/lang/String;
    //   105: invokespecial <init> : (Ljava/lang/String;)V
    //   108: athrow
    //   109: iload #4
    //   111: iconst_1
    //   112: isub
    //   113: istore #4
    //   115: goto -> 11
    //   118: iload #4
    //   120: iconst_1
    //   121: isub
    //   122: istore #4
    //   124: goto -> 34
    //   127: new java/lang/StringBuilder
    //   130: dup
    //   131: aload_1
    //   132: iload #6
    //   134: iload #5
    //   136: invokevirtual substring : (II)Ljava/lang/String;
    //   139: invokespecial <init> : (Ljava/lang/String;)V
    //   142: astore_1
    //   143: iload #7
    //   145: istore #4
    //   147: iload #4
    //   149: aload_1
    //   150: invokevirtual length : ()I
    //   153: if_icmpge -> 204
    //   156: aload_1
    //   157: iload #4
    //   159: invokevirtual charAt : (I)C
    //   162: bipush #44
    //   164: if_icmpeq -> 182
    //   167: iload #4
    //   169: istore #5
    //   171: aload_1
    //   172: iload #4
    //   174: invokevirtual charAt : (I)C
    //   177: bipush #46
    //   179: if_icmpne -> 195
    //   182: aload_1
    //   183: iload #4
    //   185: invokevirtual deleteCharAt : (I)Ljava/lang/StringBuilder;
    //   188: pop
    //   189: iload #4
    //   191: iconst_1
    //   192: isub
    //   193: istore #5
    //   195: iload #5
    //   197: iconst_1
    //   198: iadd
    //   199: istore #4
    //   201: goto -> 147
    //   204: aload_0
    //   205: aload_1
    //   206: invokevirtual toString : ()Ljava/lang/String;
    //   209: aload_2
    //   210: invokevirtual parseBytes : (Ljava/lang/String;Ljava/lang/String;)J
    //   213: lreturn
    //   214: iconst_0
    //   215: istore #6
    //   217: goto -> 71
    //   220: iconst_0
    //   221: istore #5
    //   223: goto -> 34
  }
  
  List<String> performCommand(String[] paramArrayOfString, int paramInt, long paramLong) {
    // Byte code:
    //   0: aconst_null
    //   1: astore #10
    //   3: new java/util/ArrayList
    //   6: dup
    //   7: bipush #20
    //   9: invokespecial <init> : (I)V
    //   12: astore #12
    //   14: lload_3
    //   15: invokestatic start : (J)Ljava/lang/Thread;
    //   18: astore #13
    //   20: aload_0
    //   21: aload_1
    //   22: invokevirtual openProcess : ([Ljava/lang/String;)Ljava/lang/Process;
    //   25: astore #5
    //   27: aload #5
    //   29: invokevirtual getInputStream : ()Ljava/io/InputStream;
    //   32: astore #7
    //   34: aload #5
    //   36: invokevirtual getOutputStream : ()Ljava/io/OutputStream;
    //   39: astore #9
    //   41: aload #5
    //   43: invokevirtual getErrorStream : ()Ljava/io/InputStream;
    //   46: astore #8
    //   48: new java/io/BufferedReader
    //   51: dup
    //   52: new java/io/InputStreamReader
    //   55: dup
    //   56: aload #7
    //   58: invokespecial <init> : (Ljava/io/InputStream;)V
    //   61: invokespecial <init> : (Ljava/io/Reader;)V
    //   64: astore #11
    //   66: aload #11
    //   68: invokevirtual readLine : ()Ljava/lang/String;
    //   71: astore #6
    //   73: aload #6
    //   75: ifnull -> 118
    //   78: aload #12
    //   80: invokeinterface size : ()I
    //   85: iload_2
    //   86: if_icmpge -> 118
    //   89: aload #12
    //   91: aload #6
    //   93: getstatic java/util/Locale.ENGLISH : Ljava/util/Locale;
    //   96: invokevirtual toLowerCase : (Ljava/util/Locale;)Ljava/lang/String;
    //   99: invokevirtual trim : ()Ljava/lang/String;
    //   102: invokeinterface add : (Ljava/lang/Object;)Z
    //   107: pop
    //   108: aload #11
    //   110: invokevirtual readLine : ()Ljava/lang/String;
    //   113: astore #6
    //   115: goto -> 73
    //   118: aload #5
    //   120: invokevirtual waitFor : ()I
    //   123: pop
    //   124: aload #13
    //   126: invokestatic stop : (Ljava/lang/Thread;)V
    //   129: aload #5
    //   131: invokevirtual exitValue : ()I
    //   134: ifeq -> 302
    //   137: new java/io/IOException
    //   140: dup
    //   141: new java/lang/StringBuilder
    //   144: dup
    //   145: invokespecial <init> : ()V
    //   148: ldc_w 'Command line returned OS error code ''
    //   151: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   154: aload #5
    //   156: invokevirtual exitValue : ()I
    //   159: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   162: ldc_w '' for command '
    //   165: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   168: aload_1
    //   169: invokestatic asList : ([Ljava/lang/Object;)Ljava/util/List;
    //   172: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   175: invokevirtual toString : ()Ljava/lang/String;
    //   178: invokespecial <init> : (Ljava/lang/String;)V
    //   181: athrow
    //   182: astore #12
    //   184: aload #8
    //   186: astore #10
    //   188: aload #9
    //   190: astore #6
    //   192: aload #5
    //   194: astore #8
    //   196: aload #11
    //   198: astore #5
    //   200: aload #12
    //   202: astore #9
    //   204: new org/apache/commons/io/IOExceptionWithCause
    //   207: dup
    //   208: new java/lang/StringBuilder
    //   211: dup
    //   212: invokespecial <init> : ()V
    //   215: ldc_w 'Command line threw an InterruptedException for command '
    //   218: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   221: aload_1
    //   222: invokestatic asList : ([Ljava/lang/Object;)Ljava/util/List;
    //   225: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   228: ldc_w ' timeout='
    //   231: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   234: lload_3
    //   235: invokevirtual append : (J)Ljava/lang/StringBuilder;
    //   238: invokevirtual toString : ()Ljava/lang/String;
    //   241: aload #9
    //   243: invokespecial <init> : (Ljava/lang/String;Ljava/lang/Throwable;)V
    //   246: athrow
    //   247: astore #11
    //   249: aload #10
    //   251: astore_1
    //   252: aload #8
    //   254: astore #10
    //   256: aload #6
    //   258: astore #9
    //   260: aload_1
    //   261: astore #8
    //   263: aload #5
    //   265: astore #6
    //   267: aload #11
    //   269: astore_1
    //   270: aload #7
    //   272: invokestatic closeQuietly : (Ljava/io/InputStream;)V
    //   275: aload #9
    //   277: invokestatic closeQuietly : (Ljava/io/OutputStream;)V
    //   280: aload #8
    //   282: invokestatic closeQuietly : (Ljava/io/InputStream;)V
    //   285: aload #6
    //   287: invokestatic closeQuietly : (Ljava/io/Reader;)V
    //   290: aload #10
    //   292: ifnull -> 300
    //   295: aload #10
    //   297: invokevirtual destroy : ()V
    //   300: aload_1
    //   301: athrow
    //   302: aload #12
    //   304: invokeinterface isEmpty : ()Z
    //   309: ifeq -> 355
    //   312: new java/io/IOException
    //   315: dup
    //   316: new java/lang/StringBuilder
    //   319: dup
    //   320: invokespecial <init> : ()V
    //   323: ldc_w 'Command line did not return any info for command '
    //   326: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   329: aload_1
    //   330: invokestatic asList : ([Ljava/lang/Object;)Ljava/util/List;
    //   333: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   336: invokevirtual toString : ()Ljava/lang/String;
    //   339: invokespecial <init> : (Ljava/lang/String;)V
    //   342: athrow
    //   343: astore_1
    //   344: aload #11
    //   346: astore #6
    //   348: aload #5
    //   350: astore #10
    //   352: goto -> 270
    //   355: aload #7
    //   357: invokestatic closeQuietly : (Ljava/io/InputStream;)V
    //   360: aload #9
    //   362: invokestatic closeQuietly : (Ljava/io/OutputStream;)V
    //   365: aload #8
    //   367: invokestatic closeQuietly : (Ljava/io/InputStream;)V
    //   370: aload #11
    //   372: invokestatic closeQuietly : (Ljava/io/Reader;)V
    //   375: aload #5
    //   377: ifnull -> 385
    //   380: aload #5
    //   382: invokevirtual destroy : ()V
    //   385: aload #12
    //   387: areturn
    //   388: astore_1
    //   389: aconst_null
    //   390: astore #6
    //   392: aconst_null
    //   393: astore #8
    //   395: aconst_null
    //   396: astore #9
    //   398: aconst_null
    //   399: astore #7
    //   401: aconst_null
    //   402: astore #10
    //   404: goto -> 270
    //   407: astore_1
    //   408: aconst_null
    //   409: astore #6
    //   411: aconst_null
    //   412: astore #8
    //   414: aconst_null
    //   415: astore #9
    //   417: aconst_null
    //   418: astore #7
    //   420: aload #5
    //   422: astore #10
    //   424: goto -> 270
    //   427: astore_1
    //   428: aconst_null
    //   429: astore #6
    //   431: aconst_null
    //   432: astore #8
    //   434: aconst_null
    //   435: astore #9
    //   437: aload #5
    //   439: astore #10
    //   441: goto -> 270
    //   444: astore_1
    //   445: aconst_null
    //   446: astore #6
    //   448: aconst_null
    //   449: astore #8
    //   451: aload #5
    //   453: astore #10
    //   455: goto -> 270
    //   458: astore_1
    //   459: aconst_null
    //   460: astore #6
    //   462: aload #5
    //   464: astore #10
    //   466: goto -> 270
    //   469: astore #9
    //   471: aconst_null
    //   472: astore #5
    //   474: aconst_null
    //   475: astore #6
    //   477: aconst_null
    //   478: astore #7
    //   480: aconst_null
    //   481: astore #8
    //   483: goto -> 204
    //   486: astore #9
    //   488: aconst_null
    //   489: astore #11
    //   491: aconst_null
    //   492: astore #6
    //   494: aconst_null
    //   495: astore #7
    //   497: aload #5
    //   499: astore #8
    //   501: aload #11
    //   503: astore #5
    //   505: goto -> 204
    //   508: astore #9
    //   510: aconst_null
    //   511: astore #11
    //   513: aconst_null
    //   514: astore #6
    //   516: aload #5
    //   518: astore #8
    //   520: aload #11
    //   522: astore #5
    //   524: goto -> 204
    //   527: astore #12
    //   529: aconst_null
    //   530: astore #11
    //   532: aload #9
    //   534: astore #6
    //   536: aload #5
    //   538: astore #8
    //   540: aload #12
    //   542: astore #9
    //   544: aload #11
    //   546: astore #5
    //   548: goto -> 204
    //   551: astore #12
    //   553: aconst_null
    //   554: astore #10
    //   556: aload #9
    //   558: astore #6
    //   560: aload #5
    //   562: astore #11
    //   564: aload #12
    //   566: astore #9
    //   568: aload #10
    //   570: astore #5
    //   572: aload #8
    //   574: astore #10
    //   576: aload #11
    //   578: astore #8
    //   580: goto -> 204
    // Exception table:
    //   from	to	target	type
    //   14	27	469	java/lang/InterruptedException
    //   14	27	388	finally
    //   27	34	486	java/lang/InterruptedException
    //   27	34	407	finally
    //   34	41	508	java/lang/InterruptedException
    //   34	41	427	finally
    //   41	48	527	java/lang/InterruptedException
    //   41	48	444	finally
    //   48	66	551	java/lang/InterruptedException
    //   48	66	458	finally
    //   66	73	182	java/lang/InterruptedException
    //   66	73	343	finally
    //   78	115	182	java/lang/InterruptedException
    //   78	115	343	finally
    //   118	182	182	java/lang/InterruptedException
    //   118	182	343	finally
    //   204	247	247	finally
    //   302	343	182	java/lang/InterruptedException
    //   302	343	343	finally
  }
  
  static {
    byte b1;
    String str1;
    byte b2 = 3;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\org\apache\commons\io\FileSystemUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */