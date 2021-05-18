package android.support.v4.content;

import android.content.ComponentName;
import android.content.Intent;

class IntentCompat$IntentCompatImplBase implements IntentCompat$IntentCompatImpl {
  public Intent makeMainActivity(ComponentName paramComponentName) {
    Intent intent = new Intent("android.intent.action.MAIN");
    intent.setComponent(paramComponentName);
    intent.addCategory("android.intent.category.LAUNCHER");
    return intent;
  }
  
  public Intent makeMainSelectorActivity(String paramString1, String paramString2) {
    Intent intent = new Intent(paramString1);
    intent.addCategory(paramString2);
    return intent;
  }
  
  public Intent makeRestartActivityTask(ComponentName paramComponentName) {
    Intent intent = makeMainActivity(paramComponentName);
    intent.addFlags(268468224);
    return intent;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\content\IntentCompat$IntentCompatImplBase.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */