import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.WorkSource;
import android.util.Log;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class cwj {
  private static final Method a = a();
  
  private static final Method b = b();
  
  private static final Method c = c();
  
  private static final Method d = d();
  
  private static final Method e = e();
  
  public static int a(WorkSource paramWorkSource) {
    if (c != null)
      try {
        return ((Integer)c.invoke(paramWorkSource, new Object[0])).intValue();
      } catch (Exception exception) {
        Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", exception);
      }  
    return 0;
  }
  
  public static WorkSource a(int paramInt, String paramString) {
    WorkSource workSource = new WorkSource();
    a(workSource, paramInt, paramString);
    return workSource;
  }
  
  public static WorkSource a(Context paramContext, String paramString) {
    String str;
    if (paramContext == null || paramContext.getPackageManager() == null)
      return null; 
    try {
      ApplicationInfo applicationInfo = dgl.b(paramContext).a(paramString, 0);
      if (applicationInfo == null) {
        str = String.valueOf(paramString);
        if (str.length() != 0) {
          str = "Could not get applicationInfo from package: ".concat(str);
          Log.e("WorkSourceUtil", str);
          return null;
        } 
        str = new String("Could not get applicationInfo from package: ");
        Log.e("WorkSourceUtil", str);
        return null;
      } 
    } catch (android.content.pm.PackageManager.NameNotFoundException nameNotFoundException) {
      str = String.valueOf(paramString);
      if (str.length() != 0) {
        str = "Could not find package: ".concat(str);
        Log.e("WorkSourceUtil", str);
        return null;
      } 
      str = new String("Could not find package: ");
      Log.e("WorkSourceUtil", str);
      return null;
    } 
    return a(((ApplicationInfo)str).uid, paramString);
  }
  
  public static String a(WorkSource paramWorkSource, int paramInt) {
    if (e != null)
      try {
        return (String)e.invoke(paramWorkSource, new Object[] { Integer.valueOf(paramInt) });
      } catch (Exception exception) {
        Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", exception);
      }  
    return null;
  }
  
  private static Method a() {
    try {
      return WorkSource.class.getMethod("add", new Class[] { int.class });
    } catch (Exception exception) {
      return null;
    } 
  }
  
  public static void a(WorkSource paramWorkSource, int paramInt, String paramString) {
    if (b != null) {
      String str = paramString;
      if (paramString == null)
        str = ""; 
      try {
        b.invoke(paramWorkSource, new Object[] { Integer.valueOf(paramInt), str });
        return;
      } catch (Exception exception) {
        Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", exception);
        return;
      } 
    } 
    if (a != null)
      try {
        a.invoke(exception, new Object[] { Integer.valueOf(paramInt) });
        return;
      } catch (Exception exception1) {
        Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", exception1);
        return;
      }  
  }
  
  public static boolean a(Context paramContext) {
    return (paramContext != null && paramContext.getPackageManager() != null && dgl.b(paramContext).a("android.permission.UPDATE_DEVICE_STATS", paramContext.getPackageName()) == 0);
  }
  
  private static Method b() {
    Method method = null;
    if (cwd.g())
      try {
        return WorkSource.class.getMethod("add", new Class[] { int.class, String.class });
      } catch (Exception exception) {
        return null;
      }  
    return (Method)exception;
  }
  
  public static List<String> b(WorkSource paramWorkSource) {
    int i;
    int j = 0;
    if (paramWorkSource == null) {
      i = 0;
    } else {
      i = a(paramWorkSource);
    } 
    if (i == 0)
      return Collections.EMPTY_LIST; 
    ArrayList<String> arrayList = new ArrayList();
    while (true) {
      String str;
      ArrayList<String> arrayList1 = arrayList;
      if (j < i) {
        str = a(paramWorkSource, j);
        if (!cwg.a(str))
          arrayList.add(str); 
        j++;
        continue;
      } 
      return (List<String>)str;
    } 
  }
  
  private static Method c() {
    try {
      return WorkSource.class.getMethod("size", new Class[0]);
    } catch (Exception exception) {
      return null;
    } 
  }
  
  private static Method d() {
    try {
      return WorkSource.class.getMethod("get", new Class[] { int.class });
    } catch (Exception exception) {
      return null;
    } 
  }
  
  private static Method e() {
    Method method = null;
    if (cwd.g())
      try {
        return WorkSource.class.getMethod("getName", new Class[] { int.class });
      } catch (Exception exception) {
        return null;
      }  
    return (Method)exception;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cwj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */