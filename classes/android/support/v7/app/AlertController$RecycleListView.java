package android.support.v7.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.v7.appcompat.R;
import android.util.AttributeSet;
import android.widget.ListView;

public class AlertController$RecycleListView extends ListView {
  private final int mPaddingBottomNoButtons;
  
  private final int mPaddingTopNoTitle;
  
  public AlertController$RecycleListView(Context paramContext) {
    this(paramContext, (AttributeSet)null);
  }
  
  public AlertController$RecycleListView(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    TypedArray typedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.RecycleListView);
    this.mPaddingBottomNoButtons = typedArray.getDimensionPixelOffset(R.styleable.RecycleListView_paddingBottomNoButtons, -1);
    this.mPaddingTopNoTitle = typedArray.getDimensionPixelOffset(R.styleable.RecycleListView_paddingTopNoTitle, -1);
  }
  
  public void setHasDecor(boolean paramBoolean1, boolean paramBoolean2) {
    if (!paramBoolean2 || !paramBoolean1) {
      int i;
      int j;
      int k = getPaddingLeft();
      if (paramBoolean1) {
        i = getPaddingTop();
      } else {
        i = this.mPaddingTopNoTitle;
      } 
      int m = getPaddingRight();
      if (paramBoolean2) {
        j = getPaddingBottom();
      } else {
        j = this.mPaddingBottomNoButtons;
      } 
      setPadding(k, i, m, j);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\app\AlertController$RecycleListView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */