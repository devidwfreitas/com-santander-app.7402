package android.support.v7.widget;

import android.view.View;
import android.view.ViewGroup;

interface ChildHelper$Callback {
  void addView(View paramView, int paramInt);
  
  void attachViewToParent(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams);
  
  void detachViewFromParent(int paramInt);
  
  View getChildAt(int paramInt);
  
  int getChildCount();
  
  RecyclerView$ViewHolder getChildViewHolder(View paramView);
  
  int indexOfChild(View paramView);
  
  void onEnteredHiddenState(View paramView);
  
  void onLeftHiddenState(View paramView);
  
  void removeAllViews();
  
  void removeViewAt(int paramInt);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\ChildHelper$Callback.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */