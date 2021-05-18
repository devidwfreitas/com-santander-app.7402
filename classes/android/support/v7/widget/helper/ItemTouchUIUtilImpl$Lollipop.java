package android.support.v7.widget.helper;

import android.graphics.Canvas;
import android.support.v4.view.ViewCompat;
import android.support.v7.recyclerview.R;
import android.support.v7.widget.RecyclerView;
import android.view.View;

class ItemTouchUIUtilImpl$Lollipop extends ItemTouchUIUtilImpl$Honeycomb {
  private float findMaxElevation(RecyclerView paramRecyclerView, View paramView) {
    int j = paramRecyclerView.getChildCount();
    int i = 0;
    float f;
    for (f = 0.0F; i < j; f = f1) {
      float f1;
      View view = paramRecyclerView.getChildAt(i);
      if (view == paramView) {
        f1 = f;
      } else {
        float f2 = ViewCompat.getElevation(view);
        f1 = f;
        if (f2 > f)
          f1 = f2; 
      } 
      i++;
    } 
    return f;
  }
  
  public void clearView(View paramView) {
    Object object = paramView.getTag(R.id.item_touch_helper_previous_elevation);
    if (object != null && object instanceof Float)
      ViewCompat.setElevation(paramView, ((Float)object).floatValue()); 
    paramView.setTag(R.id.item_touch_helper_previous_elevation, null);
    super.clearView(paramView);
  }
  
  public void onDraw(Canvas paramCanvas, RecyclerView paramRecyclerView, View paramView, float paramFloat1, float paramFloat2, int paramInt, boolean paramBoolean) {
    if (paramBoolean && paramView.getTag(R.id.item_touch_helper_previous_elevation) == null) {
      float f = ViewCompat.getElevation(paramView);
      ViewCompat.setElevation(paramView, 1.0F + findMaxElevation(paramRecyclerView, paramView));
      paramView.setTag(R.id.item_touch_helper_previous_elevation, Float.valueOf(f));
    } 
    super.onDraw(paramCanvas, paramRecyclerView, paramView, paramFloat1, paramFloat2, paramInt, paramBoolean);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\helper\ItemTouchUIUtilImpl$Lollipop.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */