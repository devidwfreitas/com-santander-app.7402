import android.content.Context;
import android.os.Build;
import android.support.v4.content.ContextCompat;
import java.util.ArrayList;

public class mhf {
  public static boolean a(Context paramContext, String[] paramArrayOfString) {
    String[] arrayOfString = a(paramContext, true, paramArrayOfString);
    return (arrayOfString.length > 0 && arrayOfString.length == paramArrayOfString.length);
  }
  
  public static String[] a(Context paramContext, boolean paramBoolean, String... paramVarArgs) {
    ArrayList<String> arrayList = new ArrayList();
    if (Build.VERSION.SDK_INT >= 23) {
      int j = paramVarArgs.length;
      for (int i = 0; i < j; i++) {
        boolean bool;
        String str = paramVarArgs[i];
        if (paramBoolean) {
          if (ContextCompat.checkSelfPermission(paramContext, str) == 0) {
            bool = true;
          } else {
            bool = false;
          } 
        } else if (ContextCompat.checkSelfPermission(paramContext, str) != 0) {
          bool = true;
        } else {
          bool = false;
        } 
        if (bool)
          arrayList.add(str); 
      } 
    } 
    String[] arrayOfString = new String[arrayList.size()];
    arrayList.toArray(arrayOfString);
    return arrayOfString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mhf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */