package android.support.multidex;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import android.util.Log;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipException;
import java.util.zip.ZipFile;
import java.util.zip.ZipOutputStream;

final class MultiDexExtractor {
  private static final int BUFFER_SIZE = 16384;
  
  private static final String DEX_PREFIX = "classes";
  
  private static final String DEX_SUFFIX = ".dex";
  
  private static final String EXTRACTED_NAME_EXT = ".classes";
  
  private static final String EXTRACTED_SUFFIX = ".zip";
  
  private static final String KEY_CRC = "crc";
  
  private static final String KEY_DEX_NUMBER = "dex.number";
  
  private static final String KEY_TIME_STAMP = "timestamp";
  
  private static final int MAX_EXTRACT_ATTEMPTS = 3;
  
  private static final long NO_VALUE = -1L;
  
  private static final String PREFS_FILE = "multidex.version";
  
  private static final String TAG = "MultiDex";
  
  private static Method sApplyMethod;
  
  static {
    try {
      sApplyMethod = SharedPreferences.Editor.class.getMethod("apply", new Class[0]);
      return;
    } catch (NoSuchMethodException noSuchMethodException) {
      sApplyMethod = null;
      return;
    } 
  }
  
  private static void apply(SharedPreferences.Editor paramEditor) {
    if (sApplyMethod != null)
      try {
        sApplyMethod.invoke(paramEditor, new Object[0]);
        return;
      } catch (InvocationTargetException invocationTargetException) {
      
      } catch (IllegalAccessException illegalAccessException) {} 
    paramEditor.commit();
  }
  
  private static void closeQuietly(Closeable paramCloseable) {
    try {
      paramCloseable.close();
      return;
    } catch (IOException iOException) {
      Log.w("MultiDex", "Failed to close resource", iOException);
      return;
    } 
  }
  
  private static void extract(ZipFile paramZipFile, ZipEntry paramZipEntry, File paramFile, String paramString) {
    ZipOutputStream zipOutputStream;
    InputStream inputStream = paramZipFile.getInputStream(paramZipEntry);
    File file = File.createTempFile(paramString, ".zip", paramFile.getParentFile());
    Log.i("MultiDex", "Extracting " + file.getPath());
    try {
    
    } finally {
      closeQuietly(inputStream);
      file.delete();
    } 
    zipOutputStream.close();
    throw paramZipEntry;
  }
  
  private static SharedPreferences getMultiDexPreferences(Context paramContext) {
    if (Build.VERSION.SDK_INT < 11) {
      boolean bool = false;
      return paramContext.getSharedPreferences("multidex.version", bool);
    } 
    byte b = 4;
    return paramContext.getSharedPreferences("multidex.version", b);
  }
  
  private static long getTimeStamp(File paramFile) {
    long l2 = paramFile.lastModified();
    long l1 = l2;
    if (l2 == -1L)
      l1 = l2 - 1L; 
    return l1;
  }
  
  private static long getZipCrc(File paramFile) {
    long l2 = ZipUtil.getZipCrc(paramFile);
    long l1 = l2;
    if (l2 == -1L)
      l1 = l2 - 1L; 
    return l1;
  }
  
  private static boolean isModified(Context paramContext, File paramFile, long paramLong) {
    SharedPreferences sharedPreferences = getMultiDexPreferences(paramContext);
    return (sharedPreferences.getLong("timestamp", -1L) != getTimeStamp(paramFile) || sharedPreferences.getLong("crc", -1L) != paramLong);
  }
  
  static List<File> load(Context paramContext, ApplicationInfo paramApplicationInfo, File paramFile, boolean paramBoolean) {
    Log.i("MultiDex", "MultiDexExtractor.load(" + paramApplicationInfo.sourceDir + ", " + paramBoolean + ")");
    File file = new File(paramApplicationInfo.sourceDir);
    long l = getZipCrc(file);
    if (!paramBoolean && !isModified(paramContext, file, l)) {
      try {
        List<File> list = loadExistingExtractions(paramContext, file, paramFile);
        list1 = list;
      } catch (IOException iOException) {
        Log.w("MultiDex", "Failed to reload existing extracted secondary dex files, falling back to fresh extraction", iOException);
        List<File> list = performExtractions(file, paramFile);
        putStoredApkInfo((Context)list1, getTimeStamp(file), l, list.size() + 1);
        list1 = list;
      } 
      Log.i("MultiDex", "load found " + list1.size() + " secondary dex files");
      return list1;
    } 
    Log.i("MultiDex", "Detected that extraction must be performed.");
    List<File> list2 = performExtractions(file, paramFile);
    putStoredApkInfo((Context)list1, getTimeStamp(file), l, list2.size() + 1);
    List<File> list1 = list2;
    Log.i("MultiDex", "load found " + list1.size() + " secondary dex files");
    return list1;
  }
  
  private static List<File> loadExistingExtractions(Context paramContext, File paramFile1, File paramFile2) {
    Log.i("MultiDex", "loading existing secondary dex files");
    String str = paramFile1.getName() + ".classes";
    int j = getMultiDexPreferences(paramContext).getInt("dex.number", 1);
    ArrayList<File> arrayList = new ArrayList(j);
    for (int i = 2; i <= j; i++) {
      File file = new File(paramFile2, str + i + ".zip");
      if (file.isFile()) {
        arrayList.add(file);
        if (!verifyZipFile(file)) {
          Log.i("MultiDex", "Invalid zip file: " + file);
          throw new IOException("Invalid ZIP file.");
        } 
      } else {
        throw new IOException("Missing extracted secondary dex file '" + file.getPath() + "'");
      } 
    } 
    return arrayList;
  }
  
  private static void mkdirChecked(File paramFile) {
    paramFile.mkdir();
    if (!paramFile.isDirectory()) {
      File file = paramFile.getParentFile();
      if (file == null) {
        Log.e("MultiDex", "Failed to create dir " + paramFile.getPath() + ". Parent file is null.");
        throw new IOException("Failed to create cache directory " + paramFile.getPath());
      } 
      Log.e("MultiDex", "Failed to create dir " + paramFile.getPath() + ". parent file is a dir " + file.isDirectory() + ", a file " + file.isFile() + ", exists " + file.exists() + ", readable " + file.canRead() + ", writable " + file.canWrite());
      throw new IOException("Failed to create cache directory " + paramFile.getPath());
    } 
  }
  
  private static List<File> performExtractions(File paramFile1, File paramFile2) {
    String str = paramFile1.getName() + ".classes";
    prepareDexDir(paramFile2, str);
    ArrayList<File> arrayList = new ArrayList();
    ZipFile zipFile = new ZipFile(paramFile1);
    try {
      ZipEntry zipEntry = zipFile.getEntry("classes" + '\002' + ".dex");
      int i = 2;
      label37: while (true) {
        if (zipEntry != null) {
          File file = new File(paramFile2, str + i + ".zip");
          arrayList.add(file);
          Log.i("MultiDex", "Extraction is needed for file " + file);
          boolean bool = false;
          int j = 0;
          while (true) {
            if (j < 3 && !bool) {
              String str1;
              j++;
              extract(zipFile, zipEntry, file, str);
              bool = verifyZipFile(file);
              StringBuilder stringBuilder = (new StringBuilder()).append("Extraction ");
              if (bool) {
                str1 = "success";
              } else {
                str1 = "failed";
              } 
              Log.i("MultiDex", stringBuilder.append(str1).append(" - length ").append(file.getAbsolutePath()).append(": ").append(file.length()).toString());
              if (!bool) {
                file.delete();
                if (file.exists())
                  Log.w("MultiDex", "Failed to delete corrupted secondary dex '" + file.getPath() + "'"); 
              } 
              continue;
            } 
            if (!bool)
              throw new IOException("Could not create zip file " + file.getAbsolutePath() + " for secondary dex (" + i + ")"); 
            zipEntry = zipFile.getEntry("classes" + ++i + ".dex");
            continue label37;
          } 
          break;
        } 
        try {
          return arrayList;
        } catch (IOException iOException) {
          return arrayList;
        } 
      } 
    } finally {
      try {
        zipFile.close();
      } catch (IOException iOException) {
        Log.w("MultiDex", "Failed to close resource", iOException);
      } 
    } 
  }
  
  private static void prepareDexDir(File paramFile, String paramString) {
    mkdirChecked(paramFile.getParentFile());
    mkdirChecked(paramFile);
    File[] arrayOfFile = paramFile.listFiles(new MultiDexExtractor$1(paramString));
    if (arrayOfFile == null) {
      Log.w("MultiDex", "Failed to list secondary dex dir content (" + paramFile.getPath() + ").");
      return;
    } 
    int j = arrayOfFile.length;
    int i = 0;
    while (true) {
      if (i < j) {
        paramFile = arrayOfFile[i];
        Log.i("MultiDex", "Trying to delete old file " + paramFile.getPath() + " of size " + paramFile.length());
        if (!paramFile.delete()) {
          Log.w("MultiDex", "Failed to delete old file " + paramFile.getPath());
        } else {
          Log.i("MultiDex", "Deleted old file " + paramFile.getPath());
        } 
        i++;
        continue;
      } 
      return;
    } 
  }
  
  private static void putStoredApkInfo(Context paramContext, long paramLong1, long paramLong2, int paramInt) {
    SharedPreferences.Editor editor = getMultiDexPreferences(paramContext).edit();
    editor.putLong("timestamp", paramLong1);
    editor.putLong("crc", paramLong2);
    editor.putInt("dex.number", paramInt);
    apply(editor);
  }
  
  static boolean verifyZipFile(File paramFile) {
    try {
      ZipFile zipFile = new ZipFile(paramFile);
      try {
        zipFile.close();
        return true;
      } catch (IOException iOException) {
        Log.w("MultiDex", "Failed to close zip file: " + paramFile.getAbsolutePath());
      } 
    } catch (ZipException zipException) {
      Log.w("MultiDex", "File " + paramFile.getAbsolutePath() + " is not a valid zip file.", zipException);
    } catch (IOException iOException) {
      Log.w("MultiDex", "Got an IOException trying to open zip file: " + paramFile.getAbsolutePath(), iOException);
    } 
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\multidex\MultiDexExtractor.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */