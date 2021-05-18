package android.support.multidex;

import dalvik.system.DexFile;
import java.io.File;
import java.lang.reflect.Field;
import java.util.List;
import java.util.ListIterator;
import java.util.zip.ZipFile;

final class MultiDex$V4 {
  private static void install(ClassLoader paramClassLoader, List<File> paramList) {
    int i = paramList.size();
    Field field = MultiDex.access$300(paramClassLoader, "path");
    StringBuilder stringBuilder = new StringBuilder((String)field.get(paramClassLoader));
    String[] arrayOfString = new String[i];
    File[] arrayOfFile = new File[i];
    ZipFile[] arrayOfZipFile = new ZipFile[i];
    DexFile[] arrayOfDexFile = new DexFile[i];
    ListIterator<File> listIterator = paramList.listIterator();
    while (listIterator.hasNext()) {
      File file = listIterator.next();
      String str = file.getAbsolutePath();
      stringBuilder.append(':').append(str);
      i = listIterator.previousIndex();
      arrayOfString[i] = str;
      arrayOfFile[i] = file;
      arrayOfZipFile[i] = new ZipFile(file);
      arrayOfDexFile[i] = DexFile.loadDex(str, str + ".dex", 0);
    } 
    field.set(paramClassLoader, stringBuilder.toString());
    MultiDex.access$400(paramClassLoader, "mPaths", (Object[])arrayOfString);
    MultiDex.access$400(paramClassLoader, "mFiles", (Object[])arrayOfFile);
    MultiDex.access$400(paramClassLoader, "mZips", (Object[])arrayOfZipFile);
    MultiDex.access$400(paramClassLoader, "mDexs", (Object[])arrayOfDexFile);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\multidex\MultiDex$V4.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */