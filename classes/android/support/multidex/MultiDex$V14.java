package android.support.multidex;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

final class MultiDex$V14 {
  private static void install(ClassLoader paramClassLoader, List<File> paramList, File paramFile) {
    Object object = MultiDex.access$300(paramClassLoader, "pathList").get(paramClassLoader);
    MultiDex.access$400(object, "dexElements", makeDexElements(object, new ArrayList<File>(paramList), paramFile));
  }
  
  private static Object[] makeDexElements(Object paramObject, ArrayList<File> paramArrayList, File paramFile) {
    return (Object[])MultiDex.access$500(paramObject, "makeDexElements", new Class[] { ArrayList.class, File.class }).invoke(paramObject, new Object[] { paramArrayList, paramFile });
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\multidex\MultiDex$V14.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */