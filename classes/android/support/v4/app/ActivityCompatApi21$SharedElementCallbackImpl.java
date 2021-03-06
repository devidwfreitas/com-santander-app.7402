package android.support.v4.app;

import android.app.SharedElementCallback;
import android.content.Context;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.os.Parcelable;
import android.view.View;
import java.util.List;
import java.util.Map;

class ActivityCompatApi21$SharedElementCallbackImpl extends SharedElementCallback {
  private ActivityCompatApi21$SharedElementCallback21 mCallback;
  
  public ActivityCompatApi21$SharedElementCallbackImpl(ActivityCompatApi21$SharedElementCallback21 paramActivityCompatApi21$SharedElementCallback21) {
    this.mCallback = paramActivityCompatApi21$SharedElementCallback21;
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
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\ActivityCompatApi21$SharedElementCallbackImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */