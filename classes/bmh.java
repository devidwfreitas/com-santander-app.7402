import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.os.Bundle;

public class bmh {
  public static bmf a(Activity paramActivity) {
    boolean bool2 = false;
    ComponentName componentName = paramActivity.getCallingActivity();
    if (componentName == null)
      return null; 
    String str2 = componentName.getPackageName();
    if (str2.equals(paramActivity.getPackageName()))
      return null; 
    Intent intent = paramActivity.getIntent();
    String str1 = str2;
    boolean bool1 = bool2;
    if (intent != null) {
      str1 = str2;
      bool1 = bool2;
      if (!intent.getBooleanExtra("_fbSourceApplicationHasBeenSet", false)) {
        intent.putExtra("_fbSourceApplicationHasBeenSet", true);
        Bundle bundle = eq.a(intent);
        str1 = str2;
        bool1 = bool2;
        if (bundle != null) {
          Bundle bundle1 = bundle.getBundle("referer_app_link");
          if (bundle1 != null) {
            str1 = bundle1.getString("package");
            bool1 = true;
            intent.putExtra("_fbSourceApplicationHasBeenSet", true);
            return new bmf(str1, bool1, null);
          } 
        } else {
          intent.putExtra("_fbSourceApplicationHasBeenSet", true);
          return new bmf(str1, bool1, null);
        } 
      } else {
        intent.putExtra("_fbSourceApplicationHasBeenSet", true);
        return new bmf(str1, bool1, null);
      } 
    } else {
      intent.putExtra("_fbSourceApplicationHasBeenSet", true);
      return new bmf(str1, bool1, null);
    } 
    bool1 = true;
    str1 = str2;
    intent.putExtra("_fbSourceApplicationHasBeenSet", true);
    return new bmf(str1, bool1, null);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bmh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */