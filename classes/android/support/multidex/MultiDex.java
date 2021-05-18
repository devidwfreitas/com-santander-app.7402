package android.support.multidex;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.util.Log;
import java.io.File;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class MultiDex {
  private static final boolean IS_VM_MULTIDEX_CAPABLE;
  
  private static final int MAX_SUPPORTED_SDK_VERSION = 20;
  
  private static final int MIN_SDK_VERSION = 4;
  
  private static final String OLD_SECONDARY_FOLDER_NAME = "secondary-dexes";
  
  private static final String SECONDARY_FOLDER_NAME = "code_cache" + File.separator + "secondary-dexes";
  
  static final String TAG = "MultiDex";
  
  private static final int VM_WITH_MULTIDEX_VERSION_MAJOR = 2;
  
  private static final int VM_WITH_MULTIDEX_VERSION_MINOR = 1;
  
  private static final Set<String> installedApk = new HashSet<String>();
  
  static {
    IS_VM_MULTIDEX_CAPABLE = isVMMultidexCapable(System.getProperty("java.vm.version"));
  }
  
  private static boolean checkValidZipFiles(List<File> paramList) {
    Iterator<File> iterator = paramList.iterator();
    while (iterator.hasNext()) {
      if (!MultiDexExtractor.verifyZipFile(iterator.next()))
        return false; 
    } 
    return true;
  }
  
  private static void clearOldDexDir(Context paramContext) {
    File[] arrayOfFile;
    File file = new File(paramContext.getFilesDir(), "secondary-dexes");
    if (file.isDirectory()) {
      Log.i("MultiDex", "Clearing old secondary dex dir (" + file.getPath() + ").");
      arrayOfFile = file.listFiles();
      if (arrayOfFile == null) {
        Log.w("MultiDex", "Failed to list secondary dex dir content (" + file.getPath() + ").");
        return;
      } 
    } else {
      return;
    } 
    int j = arrayOfFile.length;
    for (int i = 0; i < j; i++) {
      File file1 = arrayOfFile[i];
      Log.i("MultiDex", "Trying to delete old file " + file1.getPath() + " of size " + file1.length());
      if (!file1.delete()) {
        Log.w("MultiDex", "Failed to delete old file " + file1.getPath());
      } else {
        Log.i("MultiDex", "Deleted old file " + file1.getPath());
      } 
    } 
    if (!file.delete()) {
      Log.w("MultiDex", "Failed to delete secondary dex dir " + file.getPath());
      return;
    } 
    Log.i("MultiDex", "Deleted old secondary dex dir " + file.getPath());
  }
  
  private static void expandFieldArray(Object paramObject, String paramString, Object[] paramArrayOfObject) {
    Field field = findField(paramObject, paramString);
    Object[] arrayOfObject1 = (Object[])field.get(paramObject);
    Object[] arrayOfObject2 = (Object[])Array.newInstance(arrayOfObject1.getClass().getComponentType(), arrayOfObject1.length + paramArrayOfObject.length);
    System.arraycopy(arrayOfObject1, 0, arrayOfObject2, 0, arrayOfObject1.length);
    System.arraycopy(paramArrayOfObject, 0, arrayOfObject2, arrayOfObject1.length, paramArrayOfObject.length);
    field.set(paramObject, arrayOfObject2);
  }
  
  private static Field findField(Object paramObject, String paramString) {
    Class<?> clazz = paramObject.getClass();
    while (clazz != null) {
      try {
        Field field = clazz.getDeclaredField(paramString);
        if (!field.isAccessible())
          field.setAccessible(true); 
        return field;
      } catch (NoSuchFieldException noSuchFieldException) {
        clazz = clazz.getSuperclass();
      } 
    } 
    throw new NoSuchFieldException("Field " + paramString + " not found in " + paramObject.getClass());
  }
  
  private static Method findMethod(Object paramObject, String paramString, Class<?>... paramVarArgs) {
    Class<?> clazz = paramObject.getClass();
    while (clazz != null) {
      try {
        Method method = clazz.getDeclaredMethod(paramString, paramVarArgs);
        if (!method.isAccessible())
          method.setAccessible(true); 
        return method;
      } catch (NoSuchMethodException noSuchMethodException) {
        clazz = clazz.getSuperclass();
      } 
    } 
    throw new NoSuchMethodException("Method " + paramString + " with parameters " + Arrays.asList(paramVarArgs) + " not found in " + paramObject.getClass());
  }
  
  private static ApplicationInfo getApplicationInfo(Context paramContext) {
    PackageManager packageManager;
    try {
      packageManager = paramContext.getPackageManager();
      String str = paramContext.getPackageName();
      if (packageManager == null || str == null)
        return null; 
    } catch (RuntimeException runtimeException) {
      Log.w("MultiDex", "Failure while trying to obtain ApplicationInfo from Context. Must be running in test mode. Skip patching.", runtimeException);
      return null;
    } 
    return packageManager.getApplicationInfo((String)runtimeException, 128);
  }
  
  public static void install(Context paramContext) {
    ApplicationInfo applicationInfo;
    ClassLoader classLoader;
    Log.i("MultiDex", "install");
    if (IS_VM_MULTIDEX_CAPABLE) {
      Log.i("MultiDex", "VM has multidex support, MultiDex support library is disabled.");
      return;
    } 
    if (Build.VERSION.SDK_INT < 4)
      throw new RuntimeException("Multi dex installation failed. SDK " + Build.VERSION.SDK_INT + " is unsupported. Min SDK version is " + '\004' + "."); 
    try {
      applicationInfo = getApplicationInfo(paramContext);
      if (applicationInfo != null) {
        String str;
        synchronized (installedApk) {
          str = applicationInfo.sourceDir;
          if (installedApk.contains(str))
            return; 
        } 
        installedApk.add(str);
        if (Build.VERSION.SDK_INT > 20)
          Log.w("MultiDex", "MultiDex is not guaranteed to work in SDK version " + Build.VERSION.SDK_INT + ": SDK version higher than " + '\024' + " should be backed by " + "runtime with built-in multidex capabilty but it's not the " + "case here: java.vm.version=\"" + System.getProperty("java.vm.version") + "\""); 
        try {
          classLoader = paramContext.getClassLoader();
          if (classLoader == null) {
            Log.e("MultiDex", "Context class loader is null. Must be running in test mode. Skip patching.");
            /* monitor exit ClassFileLocalVariableReferenceExpression{type=ObjectType{java/lang/Object}, name=SYNTHETIC_LOCAL_VARIABLE_1} */
            return;
          } 
        } catch (RuntimeException null) {
          Log.w("MultiDex", "Failure while trying to obtain Context class loader. Must be running in test mode. Skip patching.", exception);
          /* monitor exit ClassFileLocalVariableReferenceExpression{type=ObjectType{java/lang/Object}, name=SYNTHETIC_LOCAL_VARIABLE_1} */
          return;
        } 
        try {
          clearOldDexDir((Context)exception);
        } catch (Throwable throwable) {}
      } else {
        return;
      } 
    } catch (Exception exception) {
      Log.e("MultiDex", "Multidex installation failure", exception);
      throw new RuntimeException("Multi dex installation failed (" + exception.getMessage() + ").");
    } 
    File file = new File(applicationInfo.dataDir, SECONDARY_FOLDER_NAME);
    List<File> list = MultiDexExtractor.load((Context)exception, applicationInfo, file, false);
    if (checkValidZipFiles(list)) {
      installSecondaryDexes(classLoader, file, list);
    } else {
      Log.w("MultiDex", "Files were not valid zip files.  Forcing a reload.");
      List<File> list1 = MultiDexExtractor.load((Context)exception, applicationInfo, file, true);
      if (checkValidZipFiles(list1)) {
        installSecondaryDexes(classLoader, file, list1);
      } else {
        throw new RuntimeException("Zip files were not valid.");
      } 
    } 
    /* monitor exit ClassFileLocalVariableReferenceExpression{type=ObjectType{java/lang/Object}, name=SYNTHETIC_LOCAL_VARIABLE_1} */
    Log.i("MultiDex", "install done");
  }
  
  private static void installSecondaryDexes(ClassLoader paramClassLoader, File paramFile, List<File> paramList) {
    if (!paramList.isEmpty()) {
      if (Build.VERSION.SDK_INT >= 19) {
        MultiDex$V19.access$000(paramClassLoader, paramList, paramFile);
        return;
      } 
    } else {
      return;
    } 
    if (Build.VERSION.SDK_INT >= 14) {
      MultiDex$V14.access$100(paramClassLoader, paramList, paramFile);
      return;
    } 
    MultiDex$V4.access$200(paramClassLoader, paramList);
  }
  
  static boolean isVMMultidexCapable(String paramString) {
    // Byte code:
    //   0: iconst_0
    //   1: istore #4
    //   3: iload #4
    //   5: istore_3
    //   6: aload_0
    //   7: ifnull -> 76
    //   10: ldc_w '(\d+)\.(\d+)(\.\d+)?'
    //   13: invokestatic compile : (Ljava/lang/String;)Ljava/util/regex/Pattern;
    //   16: aload_0
    //   17: invokevirtual matcher : (Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    //   20: astore #5
    //   22: iload #4
    //   24: istore_3
    //   25: aload #5
    //   27: invokevirtual matches : ()Z
    //   30: ifeq -> 76
    //   33: aload #5
    //   35: iconst_1
    //   36: invokevirtual group : (I)Ljava/lang/String;
    //   39: invokestatic parseInt : (Ljava/lang/String;)I
    //   42: istore_1
    //   43: aload #5
    //   45: iconst_2
    //   46: invokevirtual group : (I)Ljava/lang/String;
    //   49: invokestatic parseInt : (Ljava/lang/String;)I
    //   52: istore_2
    //   53: iload_1
    //   54: iconst_2
    //   55: if_icmpgt -> 74
    //   58: iload #4
    //   60: istore_3
    //   61: iload_1
    //   62: iconst_2
    //   63: if_icmpne -> 76
    //   66: iload #4
    //   68: istore_3
    //   69: iload_2
    //   70: iconst_1
    //   71: if_icmplt -> 76
    //   74: iconst_1
    //   75: istore_3
    //   76: new java/lang/StringBuilder
    //   79: dup
    //   80: invokespecial <init> : ()V
    //   83: ldc_w 'VM with version '
    //   86: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   89: aload_0
    //   90: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   93: astore #5
    //   95: iload_3
    //   96: ifeq -> 120
    //   99: ldc_w ' has multidex support'
    //   102: astore_0
    //   103: ldc 'MultiDex'
    //   105: aload #5
    //   107: aload_0
    //   108: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   111: invokevirtual toString : ()Ljava/lang/String;
    //   114: invokestatic i : (Ljava/lang/String;Ljava/lang/String;)I
    //   117: pop
    //   118: iload_3
    //   119: ireturn
    //   120: ldc_w ' does not have multidex support'
    //   123: astore_0
    //   124: goto -> 103
    //   127: astore #5
    //   129: iload #4
    //   131: istore_3
    //   132: goto -> 76
    // Exception table:
    //   from	to	target	type
    //   33	53	127	java/lang/NumberFormatException
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\multidex\MultiDex.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */