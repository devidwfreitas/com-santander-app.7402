package android.support.v7.widget;

import android.content.pm.ResolveInfo;
import java.math.BigDecimal;

public final class ActivityChooserModel$ActivityResolveInfo implements Comparable<ActivityChooserModel$ActivityResolveInfo> {
  public final ResolveInfo resolveInfo;
  
  public float weight;
  
  public ActivityChooserModel$ActivityResolveInfo(ResolveInfo paramResolveInfo) {
    this.resolveInfo = paramResolveInfo;
  }
  
  public int compareTo(ActivityChooserModel$ActivityResolveInfo paramActivityChooserModel$ActivityResolveInfo) {
    return Float.floatToIntBits(paramActivityChooserModel$ActivityResolveInfo.weight) - Float.floatToIntBits(this.weight);
  }
  
  public boolean equals(Object paramObject) {
    if (this != paramObject) {
      if (paramObject == null)
        return false; 
      if (getClass() != paramObject.getClass())
        return false; 
      paramObject = paramObject;
      if (Float.floatToIntBits(this.weight) != Float.floatToIntBits(((ActivityChooserModel$ActivityResolveInfo)paramObject).weight))
        return false; 
    } 
    return true;
  }
  
  public int hashCode() {
    return Float.floatToIntBits(this.weight) + 31;
  }
  
  public String toString() {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("[");
    stringBuilder.append("resolveInfo:").append(this.resolveInfo.toString());
    stringBuilder.append("; weight:").append(new BigDecimal(this.weight));
    stringBuilder.append("]");
    return stringBuilder.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\ActivityChooserModel$ActivityResolveInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */