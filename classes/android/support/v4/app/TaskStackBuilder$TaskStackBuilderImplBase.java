package android.support.v4.app;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;

class TaskStackBuilder$TaskStackBuilderImplBase implements TaskStackBuilder$TaskStackBuilderImpl {
  public PendingIntent getPendingIntent(Context paramContext, Intent[] paramArrayOfIntent, int paramInt1, int paramInt2, Bundle paramBundle) {
    Intent intent = new Intent(paramArrayOfIntent[paramArrayOfIntent.length - 1]);
    intent.addFlags(268435456);
    return PendingIntent.getActivity(paramContext, paramInt1, intent, paramInt2);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\TaskStackBuilder$TaskStackBuilderImplBase.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */