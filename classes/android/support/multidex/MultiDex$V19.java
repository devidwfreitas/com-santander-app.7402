package android.support.multidex;

import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class MultiDex$V19 {
  private static void install(ClassLoader paramClassLoader, List<File> paramList, File paramFile) {
    Object object = MultiDex.access$300(paramClassLoader, "pathList").get(paramClassLoader);
    ArrayList<IOException> arrayList = new ArrayList();
    MultiDex.access$400(object, "dexElements", makeDexElements(object, new ArrayList<File>(paramList), paramFile, arrayList));
    if (arrayList.size() > 0) {
      IOException[] arrayOfIOException;
      Iterator<IOException> iterator = arrayList.iterator();
      while (iterator.hasNext())
        Log.w("MultiDex", "Exception in makeDexElement", iterator.next()); 
      Field field = MultiDex.access$300(paramClassLoader, "dexElementsSuppressedExceptions");
      object = field.get(paramClassLoader);
      if (object == null) {
        arrayOfIOException = arrayList.<IOException>toArray(new IOException[arrayList.size()]);
      } else {
        arrayOfIOException = new IOException[arrayList.size() + object.length];
        arrayList.toArray(arrayOfIOException);
        System.arraycopy(object, 0, arrayOfIOException, arrayList.size(), object.length);
      } 
      field.set(paramClassLoader, arrayOfIOException);
    } 
  }
  
  private static Object[] makeDexElements(Object paramObject, ArrayList<File> paramArrayList, File paramFile, ArrayList<IOException> paramArrayList1) {
    return (Object[])MultiDex.access$500(paramObject, "makeDexElements", new Class[] { ArrayList.class, File.class, ArrayList.class }).invoke(paramObject, new Object[] { paramArrayList, paramFile, paramArrayList1 });
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\multidex\MultiDex$V19.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */