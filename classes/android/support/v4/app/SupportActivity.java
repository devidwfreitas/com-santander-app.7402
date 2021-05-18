package android.support.v4.app;

import android.support.annotation.RestrictTo;
import android.support.v4.util.SimpleArrayMap;
import com.ca.android.app.CaMDOActivity;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class SupportActivity extends CaMDOActivity {
  private SimpleArrayMap<Class<? extends SupportActivity$ExtraData>, SupportActivity$ExtraData> mExtraDataMap = new SimpleArrayMap();
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public <T extends SupportActivity$ExtraData> T getExtraData(Class<T> paramClass) {
    return (T)this.mExtraDataMap.get(paramClass);
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public void putExtraData(SupportActivity$ExtraData paramSupportActivity$ExtraData) {
    this.mExtraDataMap.put(paramSupportActivity$ExtraData.getClass(), paramSupportActivity$ExtraData);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\SupportActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */