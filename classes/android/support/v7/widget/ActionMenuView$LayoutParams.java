package android.support.v7.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewDebug.ExportedProperty;
import android.view.ViewGroup;

public class ActionMenuView$LayoutParams extends LinearLayoutCompat$LayoutParams {
  @ExportedProperty
  public int cellsUsed;
  
  @ExportedProperty
  public boolean expandable;
  
  boolean expanded;
  
  @ExportedProperty
  public int extraPixels;
  
  @ExportedProperty
  public boolean isOverflowButton;
  
  @ExportedProperty
  public boolean preventEdgeOffset;
  
  public ActionMenuView$LayoutParams(int paramInt1, int paramInt2) {
    super(paramInt1, paramInt2);
    this.isOverflowButton = false;
  }
  
  ActionMenuView$LayoutParams(int paramInt1, int paramInt2, boolean paramBoolean) {
    super(paramInt1, paramInt2);
    this.isOverflowButton = paramBoolean;
  }
  
  public ActionMenuView$LayoutParams(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
  }
  
  public ActionMenuView$LayoutParams(ActionMenuView$LayoutParams paramActionMenuView$LayoutParams) {
    super((ViewGroup.LayoutParams)paramActionMenuView$LayoutParams);
    this.isOverflowButton = paramActionMenuView$LayoutParams.isOverflowButton;
  }
  
  public ActionMenuView$LayoutParams(ViewGroup.LayoutParams paramLayoutParams) {
    super(paramLayoutParams);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\ActionMenuView$LayoutParams.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */