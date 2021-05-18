package android.support.v4.app;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.os.Parcelable;
import android.view.View;
import java.util.List;
import java.util.Map;

public abstract class ActivityCompatApi21$SharedElementCallback21 {
  public abstract Parcelable onCaptureSharedElementSnapshot(View paramView, Matrix paramMatrix, RectF paramRectF);
  
  public abstract View onCreateSnapshotView(Context paramContext, Parcelable paramParcelable);
  
  public abstract void onMapSharedElements(List<String> paramList, Map<String, View> paramMap);
  
  public abstract void onRejectSharedElements(List<View> paramList);
  
  public abstract void onSharedElementEnd(List<String> paramList, List<View> paramList1, List<View> paramList2);
  
  public abstract void onSharedElementStart(List<String> paramList, List<View> paramList1, List<View> paramList2);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\ActivityCompatApi21$SharedElementCallback21.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */