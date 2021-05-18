package android.support.v4.app;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.os.Parcelable;
import android.view.View;
import java.util.List;
import java.util.Map;

class ActivityCompat$SharedElementCallback23Impl extends ActivityCompatApi23$SharedElementCallback23 {
  private SharedElementCallback mCallback;
  
  public ActivityCompat$SharedElementCallback23Impl(SharedElementCallback paramSharedElementCallback) {
    this.mCallback = paramSharedElementCallback;
  }
  
  public Parcelable onCaptureSharedElementSnapshot(View paramView, Matrix paramMatrix, RectF paramRectF) {
    return this.mCallback.onCaptureSharedElementSnapshot(paramView, paramMatrix, paramRectF);
  }
  
  public View onCreateSnapshotView(Context paramContext, Parcelable paramParcelable) {
    return this.mCallback.onCreateSnapshotView(paramContext, paramParcelable);
  }
  
  public void onMapSharedElements(List<String> paramList, Map<String, View> paramMap) {
    this.mCallback.onMapSharedElements(paramList, paramMap);
  }
  
  public void onRejectSharedElements(List<View> paramList) {
    this.mCallback.onRejectSharedElements(paramList);
  }
  
  public void onSharedElementEnd(List<String> paramList, List<View> paramList1, List<View> paramList2) {
    this.mCallback.onSharedElementEnd(paramList, paramList1, paramList2);
  }
  
  public void onSharedElementStart(List<String> paramList, List<View> paramList1, List<View> paramList2) {
    this.mCallback.onSharedElementStart(paramList, paramList1, paramList2);
  }
  
  public void onSharedElementsArrived(List<String> paramList, List<View> paramList1, ActivityCompatApi23$OnSharedElementsReadyListenerBridge paramActivityCompatApi23$OnSharedElementsReadyListenerBridge) {
    this.mCallback.onSharedElementsArrived(paramList, paramList1, new ActivityCompat$SharedElementCallback23Impl$1(this, paramActivityCompatApi23$OnSharedElementsReadyListenerBridge));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\ActivityCompat$SharedElementCallback23Impl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */