package android.support.v4.app;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;

public final class TaskStackBuilder implements Iterable<Intent> {
  private static final TaskStackBuilder$TaskStackBuilderImpl IMPL = new TaskStackBuilder$TaskStackBuilderImplBase();
  
  private static final String TAG = "TaskStackBuilder";
  
  private final ArrayList<Intent> mIntents = new ArrayList<Intent>();
  
  private final Context mSourceContext;
  
  private TaskStackBuilder(Context paramContext) {
    this.mSourceContext = paramContext;
  }
  
  public static TaskStackBuilder create(Context paramContext) {
    return new TaskStackBuilder(paramContext);
  }
  
  @Deprecated
  public static TaskStackBuilder from(Context paramContext) {
    return create(paramContext);
  }
  
  public TaskStackBuilder addNextIntent(Intent paramIntent) {
    this.mIntents.add(paramIntent);
    return this;
  }
  
  public TaskStackBuilder addNextIntentWithParentStack(Intent paramIntent) {
    ComponentName componentName2 = paramIntent.getComponent();
    ComponentName componentName1 = componentName2;
    if (componentName2 == null)
      componentName1 = paramIntent.resolveActivity(this.mSourceContext.getPackageManager()); 
    if (componentName1 != null)
      addParentStack(componentName1); 
    addNextIntent(paramIntent);
    return this;
  }
  
  public TaskStackBuilder addParentStack(Activity paramActivity) {
    Intent intent1;
    Intent intent2 = null;
    if (paramActivity instanceof TaskStackBuilder$SupportParentable)
      intent2 = ((TaskStackBuilder$SupportParentable)paramActivity).getSupportParentActivityIntent(); 
    if (intent2 == null) {
      intent1 = NavUtils.getParentActivityIntent(paramActivity);
    } else {
      intent1 = intent2;
    } 
    if (intent1 != null) {
      ComponentName componentName2 = intent1.getComponent();
      ComponentName componentName1 = componentName2;
      if (componentName2 == null)
        componentName1 = intent1.resolveActivity(this.mSourceContext.getPackageManager()); 
      addParentStack(componentName1);
      addNextIntent(intent1);
    } 
    return this;
  }
  
  public TaskStackBuilder addParentStack(ComponentName paramComponentName) {
    int i = this.mIntents.size();
    try {
      for (Intent intent = NavUtils.getParentActivityIntent(this.mSourceContext, paramComponentName); intent != null; intent = NavUtils.getParentActivityIntent(this.mSourceContext, intent.getComponent()))
        this.mIntents.add(i, intent); 
    } catch (android.content.pm.PackageManager.NameNotFoundException nameNotFoundException) {
      Log.e("TaskStackBuilder", "Bad ComponentName while traversing activity parent metadata");
      throw new IllegalArgumentException(nameNotFoundException);
    } 
    return this;
  }
  
  public TaskStackBuilder addParentStack(Class<?> paramClass) {
    return addParentStack(new ComponentName(this.mSourceContext, paramClass));
  }
  
  public Intent editIntentAt(int paramInt) {
    return this.mIntents.get(paramInt);
  }
  
  @Deprecated
  public Intent getIntent(int paramInt) {
    return editIntentAt(paramInt);
  }
  
  public int getIntentCount() {
    return this.mIntents.size();
  }
  
  public Intent[] getIntents() {
    Intent[] arrayOfIntent = new Intent[this.mIntents.size()];
    if (arrayOfIntent.length == 0)
      return arrayOfIntent; 
    arrayOfIntent[0] = (new Intent(this.mIntents.get(0))).addFlags(268484608);
    for (int i = 1; i < arrayOfIntent.length; i++)
      arrayOfIntent[i] = new Intent(this.mIntents.get(i)); 
    return arrayOfIntent;
  }
  
  public PendingIntent getPendingIntent(int paramInt1, int paramInt2) {
    return getPendingIntent(paramInt1, paramInt2, null);
  }
  
  public PendingIntent getPendingIntent(int paramInt1, int paramInt2, Bundle paramBundle) {
    if (this.mIntents.isEmpty())
      throw new IllegalStateException("No intents added to TaskStackBuilder; cannot getPendingIntent"); 
    Intent[] arrayOfIntent = this.mIntents.<Intent>toArray(new Intent[this.mIntents.size()]);
    arrayOfIntent[0] = (new Intent(arrayOfIntent[0])).addFlags(268484608);
    return IMPL.getPendingIntent(this.mSourceContext, arrayOfIntent, paramInt1, paramInt2, paramBundle);
  }
  
  @Deprecated
  public Iterator<Intent> iterator() {
    return this.mIntents.iterator();
  }
  
  public void startActivities() {
    startActivities(null);
  }
  
  public void startActivities(Bundle paramBundle) {
    if (this.mIntents.isEmpty())
      throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities"); 
    Intent[] arrayOfIntent = this.mIntents.<Intent>toArray(new Intent[this.mIntents.size()]);
    arrayOfIntent[0] = (new Intent(arrayOfIntent[0])).addFlags(268484608);
    if (!ContextCompat.startActivities(this.mSourceContext, arrayOfIntent, paramBundle)) {
      Intent intent = new Intent(arrayOfIntent[arrayOfIntent.length - 1]);
      intent.addFlags(268435456);
      this.mSourceContext.startActivity(intent);
    } 
  }
  
  static {
    if (Build.VERSION.SDK_INT >= 11) {
      IMPL = new TaskStackBuilder$TaskStackBuilderImplHoneycomb();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\TaskStackBuilder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */