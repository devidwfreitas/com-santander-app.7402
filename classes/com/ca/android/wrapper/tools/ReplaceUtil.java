package com.ca.android.wrapper.tools;

import com.ca.android.wrapper.config.ReplacementElement;
import com.ca.android.wrapper.util.Logger;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class ReplaceUtil {
  private static String L_REGISTER;
  
  private static String SEMI_COLON;
  
  private static String SMALI;
  
  private static String SMALI_EXTENSION;
  
  private static Logger logger = Logger.getLogger();
  
  private static int runningNumber;
  
  static {
    SMALI = "smali";
    runningNumber = 9999;
    L_REGISTER = "L";
    SEMI_COLON = ";";
    SMALI_EXTENSION = "." + SMALI;
  }
  
  private static List<String> fileContents(String paramString, List<ReplacementElement> paramList, boolean paramBoolean) {
    ArrayList<String> arrayList = new ArrayList();
    BufferedReader bufferedReader = new BufferedReader(new FileReader(paramString));
    paramString = bufferedReader.readLine();
    String str = null;
    while (paramString != null) {
      if (paramString.contains(".super"))
        str = paramString; 
      String str1 = paramString;
      if (str != null)
        str1 = processedFileWithPatterns(str, paramString, paramList, paramBoolean); 
      arrayList.add(str1);
      paramString = bufferedReader.readLine();
    } 
    bufferedReader.close();
    return arrayList;
  }
  
  private static String getWholeFileContents(String paramString) {
    StringBuilder stringBuilder = new StringBuilder();
    BufferedReader bufferedReader = new BufferedReader(new FileReader(paramString));
    while (true) {
      String str = bufferedReader.readLine();
      if (str != null) {
        stringBuilder.append(str);
        continue;
      } 
      return stringBuilder.toString();
    } 
  }
  
  private static void insertCodeForContentResolverForContacts(File paramFile, String paramString1, String paramString2) {
    if (paramFile.getAbsoluteFile().toString().contains("android\\support\\v4\\content\\") || paramFile.getAbsoluteFile().toString().contains("android/support/v4/content/"))
      return; 
    ArrayList<String> arrayList = new ArrayList();
    BufferedReader bufferedReader = new BufferedReader(new FileReader(paramFile));
    for (String str = bufferedReader.readLine(); str != null; str = bufferedReader.readLine()) {
      String str1 = str;
      if (str.contains(paramString1)) {
        arrayList.add(str);
        for (str = bufferedReader.readLine(); !str.contains("move-result-object"); str = bufferedReader.readLine())
          arrayList.add(str); 
        String str2 = str.replace("move-result-object", "").trim();
        arrayList.add(str);
        str1 = bufferedReader.readLine();
        str = paramString2.replace("{CURSOR_OBJECT_VAR_SMALI}", str2);
        StringBuilder stringBuilder = (new StringBuilder()).append("cond_");
        int i = runningNumber - 1;
        runningNumber = i;
        str = str.replace("{CONDITION_VAR_SMALI}", stringBuilder.append(i).toString());
        stringBuilder = (new StringBuilder()).append("goto_");
        i = runningNumber - 1;
        runningNumber = i;
        str = str.replace("{GOTO_VAR_SMALI}", stringBuilder.append(i).toString());
        logger.info("Inserting Code after " + paramString1 + " as " + str + " in " + paramFile.getName());
        arrayList.add(str);
      } 
      arrayList.add(str1);
    } 
    bufferedReader.close();
    PrintWriter printWriter = new PrintWriter(paramFile);
    Iterator<String> iterator = arrayList.iterator();
    while (iterator.hasNext())
      printWriter.println(iterator.next()); 
    printWriter.close();
  }
  
  public static void insertCodeForLocationManager(File paramFile, String paramString1, String paramString2) {
    ArrayList<String> arrayList = new ArrayList();
    BufferedReader bufferedReader = new BufferedReader(new FileReader(paramFile));
    String str = bufferedReader.readLine();
    int i = 0;
    while (str != null) {
      int j = i;
      String str1 = str;
      if (i) {
        StringBuilder stringBuilder1 = (new StringBuilder()).append("cond_");
        i = runningNumber - 1;
        runningNumber = i;
        str1 = paramString2.replace("{CONDITION_VAR_SMALI}", stringBuilder1.append(i).toString());
        StringBuilder stringBuilder2 = (new StringBuilder()).append("goto_");
        i = runningNumber - 1;
        runningNumber = i;
        String str2 = str1.replace("{GOTO_VAR_SMALI}", stringBuilder2.append(i).toString());
        str1 = str + str2;
        logger.info("Inserting Code after " + paramString1 + " as " + str2 + " in " + paramFile.getName());
        j = 0;
      } 
      i = j;
      if (str1.contains(paramString1))
        i = 1; 
      arrayList.add(str1);
      str = bufferedReader.readLine();
    } 
    bufferedReader.close();
    PrintWriter printWriter = new PrintWriter(paramFile);
    Iterator<String> iterator = arrayList.iterator();
    while (iterator.hasNext())
      printWriter.println(iterator.next()); 
    printWriter.close();
  }
  
  private static boolean isFileOneOfAndroidsThatWeUse(File paramFile, String paramString) {
    return (paramFile.getAbsolutePath().substring(paramFile.getAbsolutePath().indexOf(SMALI + File.separator) + 6, paramFile.getAbsolutePath().length()).equalsIgnoreCase(paramString.substring(paramString.lastIndexOf(L_REGISTER) + 1, paramString.lastIndexOf(SEMI_COLON)) + SMALI_EXTENSION) == true);
  }
  
  public static void processClassReplacements(String paramString, List<ReplacementElement> paramList, boolean paramBoolean) {
    for (ReplacementElement replacementElement : paramList) {
      if (!paramBoolean || replacementElement.getReplaceFrom() == null || !replacementElement.getReplaceFrom().contains("Landroid/app/Application")) {
        boolean bool;
        if (replacementElement.getSkipFiles() != null) {
          String[] arrayOfString = replacementElement.getSkipFiles().split(",");
          int j = arrayOfString.length;
          int i = 0;
          boolean bool1 = false;
          while (true) {
            bool = bool1;
            if (i < j) {
              String str = arrayOfString[i];
              if (paramString.replaceAll("\\\\", "/").contains(str))
                bool1 = true; 
              i++;
              continue;
            } 
            break;
          } 
        } else {
          bool = false;
        } 
        if (!bool && (replacementElement.getReplaceFrom() != null || replacementElement.getReplaceTo() != null))
          if (replacementElement.getMethodFrom() != null && replacementElement.getMethodTo() != null) {
            replaceMethods(new File(paramString), replacementElement);
          } else {
            replaceClasses(new File(paramString), replacementElement);
          }  
        if (!bool && (replacementElement.getInsertAfter() != null || replacementElement.getInsertWhat() != null)) {
          if (replacementElement.getInsertAfter().contains("onLocationChanged")) {
            insertCodeForLocationManager(new File(paramString), replacementElement.getInsertAfter(), replacementElement.getInsertWhat());
            continue;
          } 
          if (replacementElement.getInsertAfter().contains("ContentResolver"))
            insertCodeForContentResolverForContacts(new File(paramString), replacementElement.getInsertAfter(), replacementElement.getInsertWhat()); 
        } 
      } 
    } 
  }
  
  public static void processRegex(String paramString, List<ReplacementElement> paramList, boolean paramBoolean) {
    File file = new File(paramString);
    List<String> list = fileContents(paramString, paramList, paramBoolean);
    PrintWriter printWriter = new PrintWriter(file);
    Iterator<String> iterator = list.iterator();
    while (iterator.hasNext())
      printWriter.println(iterator.next()); 
    printWriter.close();
  }
  
  public static void processSpecial(String paramString, List<ReplacementElement> paramList, boolean paramBoolean) {
    processRegex(paramString, paramList, paramBoolean);
  }
  
  private static String processedFileWithPatterns(String paramString1, String paramString2, List<ReplacementElement> paramList, boolean paramBoolean) {
    HashSet<String> hashSet = new HashSet();
    Iterator<ReplacementElement> iterator = paramList.iterator();
    String str = paramString2;
    label31: while (iterator.hasNext()) {
      ReplacementElement replacementElement = iterator.next();
      String str1 = replacementElement.getReplaceFrom();
      if (!paramBoolean || str1 == null || !str1.contains("Landroid/app/Application")) {
        String str2 = replacementElement.getReplaceTo();
        String str3 = replacementElement.getMatcher();
        if (str3 == null || (str3 != null && str3.equalsIgnoreCase(paramString1))) {
          Iterator<String> iterator1 = replacementElement.getPatterns().iterator();
          String str4 = str;
          while (true) {
            str = str4;
            if (iterator1.hasNext()) {
              boolean bool;
              str = iterator1.next();
              try {
                Matcher matcher = Pattern.compile(str).matcher(str4);
                boolean bool1 = false;
                while (true) {
                  bool = bool1;
                  if (matcher.find()) {
                    String str5 = matcher.group();
                    if (str5 != null)
                      bool1 = true; 
                    continue;
                  } 
                  break;
                } 
              } catch (Exception exception) {
                bool = false;
              } 
              if (bool) {
                str4 = str4.replaceAll(str1, Matcher.quoteReplacement(str2));
                hashSet.add(str1);
              } 
              continue;
            } 
            continue label31;
          } 
        } 
      } 
    } 
    return (String)exception;
  }
  
  public static void replaceClasses(File paramFile, ReplacementElement paramReplacementElement) {
    if (isFileOneOfAndroidsThatWeUse(paramFile, paramReplacementElement.getReplaceFrom()))
      return; 
    ArrayList<String> arrayList = new ArrayList();
    BufferedReader bufferedReader = new BufferedReader(new FileReader(paramFile));
    for (String str = bufferedReader.readLine(); str != null; str = bufferedReader.readLine()) {
      String str1 = str;
      if (str.contains(paramReplacementElement.getReplaceFrom())) {
        str1 = str.replace(paramReplacementElement.getReplaceFrom(), paramReplacementElement.getReplaceTo());
        logger.debug("Replacing " + paramReplacementElement.getReplaceFrom() + " with " + paramReplacementElement.getReplaceTo() + " in " + paramFile.getName());
      } 
      arrayList.add(str1);
    } 
    bufferedReader.close();
    PrintWriter printWriter = new PrintWriter(paramFile);
    Iterator<String> iterator = arrayList.iterator();
    while (iterator.hasNext())
      printWriter.println(iterator.next()); 
    printWriter.close();
  }
  
  public static void replaceMethods(File paramFile, ReplacementElement paramReplacementElement) {
    if (isFileOneOfAndroidsThatWeUse(paramFile, paramReplacementElement.getReplaceFrom()))
      return; 
    ArrayList<String> arrayList = new ArrayList();
    BufferedReader bufferedReader = new BufferedReader(new FileReader(paramFile));
    for (String str = bufferedReader.readLine(); str != null; str = bufferedReader.readLine()) {
      String str1 = str;
      if (str.contains(paramReplacementElement.getReplaceFrom())) {
        str1 = str;
        if (str.contains(paramReplacementElement.getMethodFrom())) {
          str = str.replace(paramReplacementElement.getReplaceFrom(), paramReplacementElement.getReplaceTo());
          logger.debug("Replacing " + paramReplacementElement.getReplaceFrom() + " with " + paramReplacementElement.getReplaceTo() + " in " + paramFile.getName());
          str1 = str.replace(paramReplacementElement.getMethodFrom(), paramReplacementElement.getMethodTo());
          logger.debug("Replacing " + paramReplacementElement.getMethodFrom() + " with " + paramReplacementElement.getMethodTo() + " in " + paramFile.getName());
        } 
      } 
      arrayList.add(str1);
    } 
    bufferedReader.close();
    PrintWriter printWriter = new PrintWriter(paramFile);
    Iterator<String> iterator = arrayList.iterator();
    while (iterator.hasNext())
      printWriter.println(iterator.next()); 
    printWriter.close();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\ca\android\wrapper\tools\ReplaceUtil.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */