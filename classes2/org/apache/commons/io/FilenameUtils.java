package org.apache.commons.io;

import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

public class FilenameUtils {
  public static final char EXTENSION_SEPARATOR = '.';
  
  public static final String EXTENSION_SEPARATOR_STR = Character.toString('.');
  
  private static final char OTHER_SEPARATOR;
  
  private static final char SYSTEM_SEPARATOR = File.separatorChar;
  
  private static final char UNIX_SEPARATOR = '/';
  
  private static final char WINDOWS_SEPARATOR = '\\';
  
  static {
    if (isSystemWindows()) {
      OTHER_SEPARATOR = '/';
      return;
    } 
    OTHER_SEPARATOR = '\\';
  }
  
  public static String concat(String paramString1, String paramString2) {
    int i = getPrefixLength(paramString2);
    if (i >= 0) {
      if (i > 0)
        return normalize(paramString2); 
      if (paramString1 != null) {
        i = paramString1.length();
        return (i == 0) ? normalize(paramString2) : (isSeparator(paramString1.charAt(i - 1)) ? normalize(paramString1 + paramString2) : normalize(paramString1 + '/' + paramString2));
      } 
    } 
    return null;
  }
  
  public static boolean directoryContains(String paramString1, String paramString2) {
    if (paramString1 == null)
      throw new IllegalArgumentException("Directory must not be null"); 
    return (paramString2 != null && !IOCase.SYSTEM.checkEquals(paramString1, paramString2)) ? IOCase.SYSTEM.checkStartsWith(paramString2, paramString1) : false;
  }
  
  private static String doGetFullPath(String paramString, boolean paramBoolean) {
    if (paramString == null)
      return null; 
    int i = getPrefixLength(paramString);
    if (i < 0)
      return null; 
    if (i >= paramString.length()) {
      String str = paramString;
      return paramBoolean ? getPrefix(paramString) : str;
    } 
    int j = indexOfLastSeparator(paramString);
    if (j < 0)
      return paramString.substring(0, i); 
    if (paramBoolean) {
      i = 1;
    } else {
      i = 0;
    } 
    j = i + j;
    i = j;
    if (j == 0)
      i = j + 1; 
    return paramString.substring(0, i);
  }
  
  private static String doGetPath(String paramString, int paramInt) {
    if (paramString != null) {
      int i = getPrefixLength(paramString);
      if (i >= 0) {
        int j = indexOfLastSeparator(paramString);
        paramInt = j + paramInt;
        return (i >= paramString.length() || j < 0 || i >= paramInt) ? "" : paramString.substring(i, paramInt);
      } 
    } 
    return null;
  }
  
  private static String doNormalize(String paramString, char paramChar, boolean paramBoolean) {
    // Byte code:
    //   0: aload_0
    //   1: ifnonnull -> 10
    //   4: aconst_null
    //   5: astore #9
    //   7: aload #9
    //   9: areturn
    //   10: aload_0
    //   11: invokevirtual length : ()I
    //   14: istore #5
    //   16: aload_0
    //   17: astore #9
    //   19: iload #5
    //   21: ifeq -> 7
    //   24: aload_0
    //   25: invokestatic getPrefixLength : (Ljava/lang/String;)I
    //   28: istore #8
    //   30: iload #8
    //   32: ifge -> 37
    //   35: aconst_null
    //   36: areturn
    //   37: iload #5
    //   39: iconst_2
    //   40: iadd
    //   41: newarray char
    //   43: astore #9
    //   45: aload_0
    //   46: iconst_0
    //   47: aload_0
    //   48: invokevirtual length : ()I
    //   51: aload #9
    //   53: iconst_0
    //   54: invokevirtual getChars : (II[CI)V
    //   57: iload_1
    //   58: getstatic org/apache/commons/io/FilenameUtils.SYSTEM_SEPARATOR : C
    //   61: if_icmpne -> 103
    //   64: getstatic org/apache/commons/io/FilenameUtils.OTHER_SEPARATOR : C
    //   67: istore_3
    //   68: iconst_0
    //   69: istore #4
    //   71: iload #4
    //   73: aload #9
    //   75: arraylength
    //   76: if_icmpge -> 110
    //   79: aload #9
    //   81: iload #4
    //   83: caload
    //   84: iload_3
    //   85: if_icmpne -> 94
    //   88: aload #9
    //   90: iload #4
    //   92: iload_1
    //   93: castore
    //   94: iload #4
    //   96: iconst_1
    //   97: iadd
    //   98: istore #4
    //   100: goto -> 71
    //   103: getstatic org/apache/commons/io/FilenameUtils.SYSTEM_SEPARATOR : C
    //   106: istore_3
    //   107: goto -> 68
    //   110: iconst_1
    //   111: istore_3
    //   112: aload #9
    //   114: iload #5
    //   116: iconst_1
    //   117: isub
    //   118: caload
    //   119: iload_1
    //   120: if_icmpeq -> 616
    //   123: iload #5
    //   125: iconst_1
    //   126: iadd
    //   127: istore #4
    //   129: aload #9
    //   131: iload #5
    //   133: iload_1
    //   134: castore
    //   135: iconst_0
    //   136: istore_3
    //   137: iload #8
    //   139: iconst_1
    //   140: iadd
    //   141: istore #5
    //   143: iload #5
    //   145: iload #4
    //   147: if_icmpge -> 229
    //   150: iload #5
    //   152: istore #7
    //   154: iload #4
    //   156: istore #6
    //   158: aload #9
    //   160: iload #5
    //   162: caload
    //   163: iload_1
    //   164: if_icmpne -> 216
    //   167: iload #5
    //   169: istore #7
    //   171: iload #4
    //   173: istore #6
    //   175: aload #9
    //   177: iload #5
    //   179: iconst_1
    //   180: isub
    //   181: caload
    //   182: iload_1
    //   183: if_icmpne -> 216
    //   186: aload #9
    //   188: iload #5
    //   190: aload #9
    //   192: iload #5
    //   194: iconst_1
    //   195: isub
    //   196: iload #4
    //   198: iload #5
    //   200: isub
    //   201: invokestatic arraycopy : (Ljava/lang/Object;ILjava/lang/Object;II)V
    //   204: iload #4
    //   206: iconst_1
    //   207: isub
    //   208: istore #6
    //   210: iload #5
    //   212: iconst_1
    //   213: isub
    //   214: istore #7
    //   216: iload #7
    //   218: iconst_1
    //   219: iadd
    //   220: istore #5
    //   222: iload #6
    //   224: istore #4
    //   226: goto -> 143
    //   229: iload #8
    //   231: iconst_1
    //   232: iadd
    //   233: istore #5
    //   235: iload #5
    //   237: iload #4
    //   239: if_icmpge -> 335
    //   242: aload #9
    //   244: iload #5
    //   246: caload
    //   247: iload_1
    //   248: if_icmpne -> 613
    //   251: aload #9
    //   253: iload #5
    //   255: iconst_1
    //   256: isub
    //   257: caload
    //   258: bipush #46
    //   260: if_icmpne -> 613
    //   263: iload #5
    //   265: iload #8
    //   267: iconst_1
    //   268: iadd
    //   269: if_icmpeq -> 283
    //   272: aload #9
    //   274: iload #5
    //   276: iconst_2
    //   277: isub
    //   278: caload
    //   279: iload_1
    //   280: if_icmpne -> 613
    //   283: iload #5
    //   285: iload #4
    //   287: iconst_1
    //   288: isub
    //   289: if_icmpne -> 294
    //   292: iconst_1
    //   293: istore_3
    //   294: aload #9
    //   296: iload #5
    //   298: iconst_1
    //   299: iadd
    //   300: aload #9
    //   302: iload #5
    //   304: iconst_1
    //   305: isub
    //   306: iload #4
    //   308: iload #5
    //   310: isub
    //   311: invokestatic arraycopy : (Ljava/lang/Object;ILjava/lang/Object;II)V
    //   314: iload #4
    //   316: iconst_2
    //   317: isub
    //   318: istore #4
    //   320: iload #5
    //   322: iconst_1
    //   323: isub
    //   324: istore #5
    //   326: iload #5
    //   328: iconst_1
    //   329: iadd
    //   330: istore #5
    //   332: goto -> 235
    //   335: iload #8
    //   337: iconst_2
    //   338: iadd
    //   339: istore #6
    //   341: iload #4
    //   343: istore #5
    //   345: iload #6
    //   347: istore #4
    //   349: iload #4
    //   351: iload #5
    //   353: if_icmpge -> 546
    //   356: aload #9
    //   358: iload #4
    //   360: caload
    //   361: iload_1
    //   362: if_icmpne -> 610
    //   365: aload #9
    //   367: iload #4
    //   369: iconst_1
    //   370: isub
    //   371: caload
    //   372: bipush #46
    //   374: if_icmpne -> 610
    //   377: aload #9
    //   379: iload #4
    //   381: iconst_2
    //   382: isub
    //   383: caload
    //   384: bipush #46
    //   386: if_icmpne -> 610
    //   389: iload #4
    //   391: iload #8
    //   393: iconst_2
    //   394: iadd
    //   395: if_icmpeq -> 409
    //   398: aload #9
    //   400: iload #4
    //   402: iconst_3
    //   403: isub
    //   404: caload
    //   405: iload_1
    //   406: if_icmpne -> 610
    //   409: iload #4
    //   411: iload #8
    //   413: iconst_2
    //   414: iadd
    //   415: if_icmpne -> 420
    //   418: aconst_null
    //   419: areturn
    //   420: iload #4
    //   422: iload #5
    //   424: iconst_1
    //   425: isub
    //   426: if_icmpne -> 431
    //   429: iconst_1
    //   430: istore_3
    //   431: iload #4
    //   433: iconst_4
    //   434: isub
    //   435: istore #6
    //   437: iload #6
    //   439: iload #8
    //   441: if_icmplt -> 507
    //   444: aload #9
    //   446: iload #6
    //   448: caload
    //   449: iload_1
    //   450: if_icmpne -> 498
    //   453: aload #9
    //   455: iload #4
    //   457: iconst_1
    //   458: iadd
    //   459: aload #9
    //   461: iload #6
    //   463: iconst_1
    //   464: iadd
    //   465: iload #5
    //   467: iload #4
    //   469: isub
    //   470: invokestatic arraycopy : (Ljava/lang/Object;ILjava/lang/Object;II)V
    //   473: iload #5
    //   475: iload #4
    //   477: iload #6
    //   479: isub
    //   480: isub
    //   481: istore #5
    //   483: iload #6
    //   485: iconst_1
    //   486: iadd
    //   487: istore #4
    //   489: iload #4
    //   491: iconst_1
    //   492: iadd
    //   493: istore #4
    //   495: goto -> 349
    //   498: iload #6
    //   500: iconst_1
    //   501: isub
    //   502: istore #6
    //   504: goto -> 437
    //   507: aload #9
    //   509: iload #4
    //   511: iconst_1
    //   512: iadd
    //   513: aload #9
    //   515: iload #8
    //   517: iload #5
    //   519: iload #4
    //   521: isub
    //   522: invokestatic arraycopy : (Ljava/lang/Object;ILjava/lang/Object;II)V
    //   525: iload #5
    //   527: iload #4
    //   529: iconst_1
    //   530: iadd
    //   531: iload #8
    //   533: isub
    //   534: isub
    //   535: istore #5
    //   537: iload #8
    //   539: iconst_1
    //   540: iadd
    //   541: istore #4
    //   543: goto -> 489
    //   546: iload #5
    //   548: ifgt -> 554
    //   551: ldc ''
    //   553: areturn
    //   554: iload #5
    //   556: iload #8
    //   558: if_icmpgt -> 574
    //   561: new java/lang/String
    //   564: dup
    //   565: aload #9
    //   567: iconst_0
    //   568: iload #5
    //   570: invokespecial <init> : ([CII)V
    //   573: areturn
    //   574: iload_3
    //   575: ifeq -> 595
    //   578: iload_2
    //   579: ifeq -> 595
    //   582: new java/lang/String
    //   585: dup
    //   586: aload #9
    //   588: iconst_0
    //   589: iload #5
    //   591: invokespecial <init> : ([CII)V
    //   594: areturn
    //   595: new java/lang/String
    //   598: dup
    //   599: aload #9
    //   601: iconst_0
    //   602: iload #5
    //   604: iconst_1
    //   605: isub
    //   606: invokespecial <init> : ([CII)V
    //   609: areturn
    //   610: goto -> 489
    //   613: goto -> 326
    //   616: iload #5
    //   618: istore #4
    //   620: goto -> 137
  }
  
  public static boolean equals(String paramString1, String paramString2) {
    return equals(paramString1, paramString2, false, IOCase.SENSITIVE);
  }
  
  public static boolean equals(String paramString1, String paramString2, boolean paramBoolean, IOCase paramIOCase) {
    if (paramString1 == null || paramString2 == null)
      return (paramString1 == null && paramString2 == null); 
    String str1 = paramString1;
    String str2 = paramString2;
    if (paramBoolean) {
      str1 = normalize(paramString1);
      paramString1 = normalize(paramString2);
      if (str1 != null) {
        str2 = paramString1;
        if (paramString1 == null)
          throw new NullPointerException("Error normalizing one or both of the file names"); 
      } else {
        throw new NullPointerException("Error normalizing one or both of the file names");
      } 
    } 
    IOCase iOCase = paramIOCase;
    if (paramIOCase == null)
      iOCase = IOCase.SENSITIVE; 
    return iOCase.checkEquals(str1, str2);
  }
  
  public static boolean equalsNormalized(String paramString1, String paramString2) {
    return equals(paramString1, paramString2, true, IOCase.SENSITIVE);
  }
  
  public static boolean equalsNormalizedOnSystem(String paramString1, String paramString2) {
    return equals(paramString1, paramString2, true, IOCase.SYSTEM);
  }
  
  public static boolean equalsOnSystem(String paramString1, String paramString2) {
    return equals(paramString1, paramString2, false, IOCase.SYSTEM);
  }
  
  public static String getBaseName(String paramString) {
    return removeExtension(getName(paramString));
  }
  
  public static String getExtension(String paramString) {
    if (paramString == null)
      return null; 
    int i = indexOfExtension(paramString);
    return (i == -1) ? "" : paramString.substring(i + 1);
  }
  
  public static String getFullPath(String paramString) {
    return doGetFullPath(paramString, true);
  }
  
  public static String getFullPathNoEndSeparator(String paramString) {
    return doGetFullPath(paramString, false);
  }
  
  public static String getName(String paramString) {
    return (paramString == null) ? null : paramString.substring(indexOfLastSeparator(paramString) + 1);
  }
  
  public static String getPath(String paramString) {
    return doGetPath(paramString, 1);
  }
  
  public static String getPathNoEndSeparator(String paramString) {
    return doGetPath(paramString, 0);
  }
  
  public static String getPrefix(String paramString) {
    if (paramString != null) {
      int i = getPrefixLength(paramString);
      if (i >= 0)
        return (i > paramString.length()) ? (paramString + '/') : paramString.substring(0, i); 
    } 
    return null;
  }
  
  public static int getPrefixLength(String paramString) {
    int i = 1;
    if (paramString == null)
      return -1; 
    int j = paramString.length();
    if (j == 0)
      return 0; 
    char c1 = paramString.charAt(0);
    if (c1 == ':')
      return -1; 
    if (j == 1)
      return (c1 == '~') ? 2 : (!isSeparator(c1) ? 0 : i); 
    if (c1 == '~') {
      int m = paramString.indexOf('/', 1);
      int k = paramString.indexOf('\\', 1);
      if (m == -1 && k == -1)
        return j + 1; 
      i = m;
      if (m == -1)
        i = k; 
      m = k;
      if (k == -1)
        m = i; 
      return Math.min(i, m) + 1;
    } 
    char c2 = paramString.charAt(1);
    if (c2 == ':') {
      i = Character.toUpperCase(c1);
      return (i >= 65 && i <= 90) ? ((j == 2 || !isSeparator(paramString.charAt(2))) ? 2 : 3) : -1;
    } 
    if (isSeparator(c1) && isSeparator(c2)) {
      int m = paramString.indexOf('/', 2);
      int k = paramString.indexOf('\\', 2);
      if ((m == -1 && k == -1) || m == 2 || k == 2)
        return -1; 
      i = m;
      if (m == -1)
        i = k; 
      m = k;
      if (k == -1)
        m = i; 
      return Math.min(i, m) + 1;
    } 
    return !isSeparator(c1) ? 0 : i;
  }
  
  public static int indexOfExtension(String paramString) {
    if (paramString != null) {
      int i = paramString.lastIndexOf('.');
      if (indexOfLastSeparator(paramString) <= i)
        return i; 
    } 
    return -1;
  }
  
  public static int indexOfLastSeparator(String paramString) {
    return (paramString == null) ? -1 : Math.max(paramString.lastIndexOf('/'), paramString.lastIndexOf('\\'));
  }
  
  public static boolean isExtension(String paramString1, String paramString2) {
    return (paramString1 != null) ? ((paramString2 == null || paramString2.length() == 0) ? ((indexOfExtension(paramString1) == -1)) : getExtension(paramString1).equals(paramString2)) : false;
  }
  
  public static boolean isExtension(String paramString, Collection<String> paramCollection) {
    if (paramString != null) {
      if (paramCollection == null || paramCollection.isEmpty())
        return (indexOfExtension(paramString) == -1); 
      paramString = getExtension(paramString);
      Iterator<String> iterator = paramCollection.iterator();
      while (true) {
        if (iterator.hasNext()) {
          if (paramString.equals(iterator.next()))
            return true; 
          continue;
        } 
        return false;
      } 
    } 
    return false;
  }
  
  public static boolean isExtension(String paramString, String[] paramArrayOfString) {
    boolean bool = true;
    if (paramString != null) {
      if (paramArrayOfString == null || paramArrayOfString.length == 0) {
        if (indexOfExtension(paramString) != -1)
          bool = false; 
        return bool;
      } 
      paramString = getExtension(paramString);
      int j = paramArrayOfString.length;
      int i = 0;
      while (true) {
        if (i < j) {
          if (paramString.equals(paramArrayOfString[i]))
            return true; 
          i++;
          continue;
        } 
        return false;
      } 
    } 
    return false;
  }
  
  private static boolean isSeparator(char paramChar) {
    return (paramChar == '/' || paramChar == '\\');
  }
  
  static boolean isSystemWindows() {
    return (SYSTEM_SEPARATOR == '\\');
  }
  
  public static String normalize(String paramString) {
    return doNormalize(paramString, SYSTEM_SEPARATOR, true);
  }
  
  public static String normalize(String paramString, boolean paramBoolean) {
    if (paramBoolean) {
      byte b1 = 47;
      return doNormalize(paramString, b1, true);
    } 
    byte b = 92;
    return doNormalize(paramString, b, true);
  }
  
  public static String normalizeNoEndSeparator(String paramString) {
    return doNormalize(paramString, SYSTEM_SEPARATOR, false);
  }
  
  public static String normalizeNoEndSeparator(String paramString, boolean paramBoolean) {
    if (paramBoolean) {
      byte b1 = 47;
      return doNormalize(paramString, b1, false);
    } 
    byte b = 92;
    return doNormalize(paramString, b, false);
  }
  
  public static String removeExtension(String paramString) {
    if (paramString == null)
      return null; 
    int i = indexOfExtension(paramString);
    String str = paramString;
    return (i != -1) ? paramString.substring(0, i) : str;
  }
  
  public static String separatorsToSystem(String paramString) {
    return (paramString == null) ? null : (isSystemWindows() ? separatorsToWindows(paramString) : separatorsToUnix(paramString));
  }
  
  public static String separatorsToUnix(String paramString) {
    return (paramString == null || paramString.indexOf('\\') == -1) ? paramString : paramString.replace('\\', '/');
  }
  
  public static String separatorsToWindows(String paramString) {
    return (paramString == null || paramString.indexOf('/') == -1) ? paramString : paramString.replace('/', '\\');
  }
  
  static String[] splitOnTokens(String paramString) {
    if (paramString.indexOf('?') == -1 && paramString.indexOf('*') == -1)
      return new String[] { paramString }; 
    char[] arrayOfChar = paramString.toCharArray();
    ArrayList<String> arrayList = new ArrayList();
    StringBuilder stringBuilder = new StringBuilder();
    for (int i = 0; i < arrayOfChar.length; i++) {
      if (arrayOfChar[i] == '?' || arrayOfChar[i] == '*') {
        if (stringBuilder.length() != 0) {
          arrayList.add(stringBuilder.toString());
          stringBuilder.setLength(0);
        } 
        if (arrayOfChar[i] == '?') {
          arrayList.add("?");
        } else if (arrayList.isEmpty() || (i > 0 && !((String)arrayList.get(arrayList.size() - 1)).equals("*"))) {
          arrayList.add("*");
        } 
      } else {
        stringBuilder.append(arrayOfChar[i]);
      } 
    } 
    if (stringBuilder.length() != 0)
      arrayList.add(stringBuilder.toString()); 
    return arrayList.<String>toArray(new String[arrayList.size()]);
  }
  
  public static boolean wildcardMatch(String paramString1, String paramString2) {
    return wildcardMatch(paramString1, paramString2, IOCase.SENSITIVE);
  }
  
  public static boolean wildcardMatch(String paramString1, String paramString2, IOCase paramIOCase) {
    // Byte code:
    //   0: aload_0
    //   1: ifnonnull -> 10
    //   4: aload_1
    //   5: ifnonnull -> 10
    //   8: iconst_1
    //   9: ireturn
    //   10: aload_0
    //   11: ifnull -> 18
    //   14: aload_1
    //   15: ifnonnull -> 20
    //   18: iconst_0
    //   19: ireturn
    //   20: aload_2
    //   21: astore #7
    //   23: aload_2
    //   24: ifnonnull -> 32
    //   27: getstatic org/apache/commons/io/IOCase.SENSITIVE : Lorg/apache/commons/io/IOCase;
    //   30: astore #7
    //   32: aload_1
    //   33: invokestatic splitOnTokens : (Ljava/lang/String;)[Ljava/lang/String;
    //   36: astore_1
    //   37: new java/util/Stack
    //   40: dup
    //   41: invokespecial <init> : ()V
    //   44: astore_2
    //   45: iconst_0
    //   46: istore #5
    //   48: iconst_0
    //   49: istore_3
    //   50: iconst_0
    //   51: istore #6
    //   53: aload_2
    //   54: invokevirtual size : ()I
    //   57: ifle -> 83
    //   60: aload_2
    //   61: invokevirtual pop : ()Ljava/lang/Object;
    //   64: checkcast [I
    //   67: astore #8
    //   69: aload #8
    //   71: iconst_0
    //   72: iaload
    //   73: istore #5
    //   75: aload #8
    //   77: iconst_1
    //   78: iaload
    //   79: istore_3
    //   80: iconst_1
    //   81: istore #6
    //   83: iload_3
    //   84: istore #4
    //   86: iload #5
    //   88: aload_1
    //   89: arraylength
    //   90: if_icmpge -> 120
    //   93: aload_1
    //   94: iload #5
    //   96: aaload
    //   97: ldc '?'
    //   99: invokevirtual equals : (Ljava/lang/Object;)Z
    //   102: ifeq -> 164
    //   105: iload_3
    //   106: iconst_1
    //   107: iadd
    //   108: istore_3
    //   109: iload_3
    //   110: aload_0
    //   111: invokevirtual length : ()I
    //   114: if_icmple -> 148
    //   117: iload_3
    //   118: istore #4
    //   120: iload #5
    //   122: aload_1
    //   123: arraylength
    //   124: if_icmpne -> 136
    //   127: iload #4
    //   129: aload_0
    //   130: invokevirtual length : ()I
    //   133: if_icmpeq -> 8
    //   136: iload #4
    //   138: istore_3
    //   139: aload_2
    //   140: invokevirtual size : ()I
    //   143: ifgt -> 53
    //   146: iconst_0
    //   147: ireturn
    //   148: iconst_0
    //   149: istore #4
    //   151: iload #5
    //   153: iconst_1
    //   154: iadd
    //   155: istore #5
    //   157: iload #4
    //   159: istore #6
    //   161: goto -> 83
    //   164: aload_1
    //   165: iload #5
    //   167: aaload
    //   168: ldc_w '*'
    //   171: invokevirtual equals : (Ljava/lang/Object;)Z
    //   174: ifeq -> 197
    //   177: iload #5
    //   179: aload_1
    //   180: arraylength
    //   181: iconst_1
    //   182: isub
    //   183: if_icmpne -> 306
    //   186: aload_0
    //   187: invokevirtual length : ()I
    //   190: istore_3
    //   191: iconst_1
    //   192: istore #4
    //   194: goto -> 151
    //   197: iload #6
    //   199: ifeq -> 283
    //   202: aload #7
    //   204: aload_0
    //   205: iload_3
    //   206: aload_1
    //   207: iload #5
    //   209: aaload
    //   210: invokevirtual checkIndexOf : (Ljava/lang/String;ILjava/lang/String;)I
    //   213: istore_3
    //   214: iload_3
    //   215: istore #4
    //   217: iload_3
    //   218: iconst_m1
    //   219: if_icmpeq -> 120
    //   222: aload #7
    //   224: aload_0
    //   225: iload_3
    //   226: iconst_1
    //   227: iadd
    //   228: aload_1
    //   229: iload #5
    //   231: aaload
    //   232: invokevirtual checkIndexOf : (Ljava/lang/String;ILjava/lang/String;)I
    //   235: istore #6
    //   237: iload_3
    //   238: istore #4
    //   240: iload #6
    //   242: iflt -> 266
    //   245: aload_2
    //   246: iconst_2
    //   247: newarray int
    //   249: dup
    //   250: iconst_0
    //   251: iload #5
    //   253: iastore
    //   254: dup
    //   255: iconst_1
    //   256: iload #6
    //   258: iastore
    //   259: invokevirtual push : (Ljava/lang/Object;)Ljava/lang/Object;
    //   262: pop
    //   263: iload_3
    //   264: istore #4
    //   266: iload #4
    //   268: aload_1
    //   269: iload #5
    //   271: aaload
    //   272: invokevirtual length : ()I
    //   275: iadd
    //   276: istore_3
    //   277: iconst_0
    //   278: istore #4
    //   280: goto -> 151
    //   283: iload_3
    //   284: istore #4
    //   286: aload #7
    //   288: aload_0
    //   289: iload_3
    //   290: aload_1
    //   291: iload #5
    //   293: aaload
    //   294: invokevirtual checkRegionMatches : (Ljava/lang/String;ILjava/lang/String;)Z
    //   297: ifne -> 266
    //   300: iload_3
    //   301: istore #4
    //   303: goto -> 120
    //   306: iconst_1
    //   307: istore #4
    //   309: goto -> 151
  }
  
  public static boolean wildcardMatchOnSystem(String paramString1, String paramString2) {
    return wildcardMatch(paramString1, paramString2, IOCase.SYSTEM);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\FilenameUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */