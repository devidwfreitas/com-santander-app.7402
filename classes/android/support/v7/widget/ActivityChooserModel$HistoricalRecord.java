package android.support.v7.widget;

import android.content.ComponentName;
import java.math.BigDecimal;

public final class ActivityChooserModel$HistoricalRecord {
  public final ComponentName activity;
  
  public final long time;
  
  public final float weight;
  
  public ActivityChooserModel$HistoricalRecord(ComponentName paramComponentName, long paramLong, float paramFloat) {
    this.activity = paramComponentName;
    this.time = paramLong;
    this.weight = paramFloat;
  }
  
  public ActivityChooserModel$HistoricalRecord(String paramString, long paramLong, float paramFloat) {
    this(ComponentName.unflattenFromString(paramString), paramLong, paramFloat);
  }
  
  public boolean equals(Object paramObject) {
    if (this != paramObject) {
      if (paramObject == null)
        return false; 
      if (getClass() != paramObject.getClass())
        return false; 
      paramObject = paramObject;
      if (this.activity == null) {
        if (((ActivityChooserModel$HistoricalRecord)paramObject).activity != null)
          return false; 
      } else if (!this.activity.equals(((ActivityChooserModel$HistoricalRecord)paramObject).activity)) {
        return false;
      } 
      if (this.time != ((ActivityChooserModel$HistoricalRecord)paramObject).time)
        return false; 
      if (Float.floatToIntBits(this.weight) != Float.floatToIntBits(((ActivityChooserModel$HistoricalRecord)paramObject).weight))
        return false; 
    } 
    return true;
  }
  
  public int hashCode() {
    if (this.activity == null) {
      byte b = 0;
      return ((b + 31) * 31 + (int)(this.time ^ this.time >>> 32L)) * 31 + Float.floatToIntBits(this.weight);
    } 
    int i = this.activity.hashCode();
    return ((i + 31) * 31 + (int)(this.time ^ this.time >>> 32L)) * 31 + Float.floatToIntBits(this.weight);
  }
  
  public String toString() {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("[");
    stringBuilder.append("; activity:").append(this.activity);
    stringBuilder.append("; time:").append(this.time);
    stringBuilder.append("; weight:").append(new BigDecimal(this.weight));
    stringBuilder.append("]");
    return stringBuilder.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\ActivityChooserModel$HistoricalRecord.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */