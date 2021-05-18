package android.support.v7.widget;

import android.content.ComponentName;
import android.content.Intent;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

final class ActivityChooserModel$DefaultSorter implements ActivityChooserModel$ActivitySorter {
  private static final float WEIGHT_DECAY_COEFFICIENT = 0.95F;
  
  private final Map<ComponentName, ActivityChooserModel$ActivityResolveInfo> mPackageNameToActivityMap = new HashMap<ComponentName, ActivityChooserModel$ActivityResolveInfo>();
  
  public void sort(Intent paramIntent, List<ActivityChooserModel$ActivityResolveInfo> paramList, List<ActivityChooserModel$HistoricalRecord> paramList1) {
    Map<ComponentName, ActivityChooserModel$ActivityResolveInfo> map = this.mPackageNameToActivityMap;
    map.clear();
    int j = paramList.size();
    int i;
    for (i = 0; i < j; i++) {
      ActivityChooserModel$ActivityResolveInfo activityChooserModel$ActivityResolveInfo = paramList.get(i);
      activityChooserModel$ActivityResolveInfo.weight = 0.0F;
      map.put(new ComponentName(activityChooserModel$ActivityResolveInfo.resolveInfo.activityInfo.packageName, activityChooserModel$ActivityResolveInfo.resolveInfo.activityInfo.name), activityChooserModel$ActivityResolveInfo);
    } 
    i = paramList1.size();
    float f = 1.0F;
    while (--i >= 0) {
      ActivityChooserModel$HistoricalRecord activityChooserModel$HistoricalRecord = paramList1.get(i);
      ActivityChooserModel$ActivityResolveInfo activityChooserModel$ActivityResolveInfo = map.get(activityChooserModel$HistoricalRecord.activity);
      if (activityChooserModel$ActivityResolveInfo != null) {
        float f1 = activityChooserModel$ActivityResolveInfo.weight;
        activityChooserModel$ActivityResolveInfo.weight = activityChooserModel$HistoricalRecord.weight * f + f1;
        f = 0.95F * f;
      } 
      i--;
    } 
    Collections.sort(paramList);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\ActivityChooserModel$DefaultSorter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */