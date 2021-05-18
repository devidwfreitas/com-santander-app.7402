package android.support.v7.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.v4.view.ViewCompat;
import android.view.View;

public class DividerItemDecoration extends RecyclerView$ItemDecoration {
  private static final int[] ATTRS = new int[] { 16843284 };
  
  public static final int HORIZONTAL = 0;
  
  public static final int VERTICAL = 1;
  
  private final Rect mBounds = new Rect();
  
  private Drawable mDivider;
  
  private int mOrientation;
  
  public DividerItemDecoration(Context paramContext, int paramInt) {
    TypedArray typedArray = paramContext.obtainStyledAttributes(ATTRS);
    this.mDivider = typedArray.getDrawable(0);
    typedArray.recycle();
    setOrientation(paramInt);
  }
  
  @SuppressLint({"NewApi"})
  private void drawHorizontal(Canvas paramCanvas, RecyclerView paramRecyclerView) {
    int i;
    boolean bool;
    int j = 0;
    paramCanvas.save();
    if (paramRecyclerView.getClipToPadding()) {
      bool = paramRecyclerView.getPaddingTop();
      i = paramRecyclerView.getHeight() - paramRecyclerView.getPaddingBottom();
      paramCanvas.clipRect(paramRecyclerView.getPaddingLeft(), bool, paramRecyclerView.getWidth() - paramRecyclerView.getPaddingRight(), i);
    } else {
      i = paramRecyclerView.getHeight();
      bool = false;
    } 
    int k = paramRecyclerView.getChildCount();
    while (j < k) {
      View view = paramRecyclerView.getChildAt(j);
      paramRecyclerView.getLayoutManager().getDecoratedBoundsWithMargins(view, this.mBounds);
      int m = this.mBounds.right;
      m = Math.round(ViewCompat.getTranslationX(view)) + m;
      int n = this.mDivider.getIntrinsicWidth();
      this.mDivider.setBounds(m - n, bool, m, i);
      this.mDivider.draw(paramCanvas);
      j++;
    } 
    paramCanvas.restore();
  }
  
  @SuppressLint({"NewApi"})
  private void drawVertical(Canvas paramCanvas, RecyclerView paramRecyclerView) {
    int i;
    boolean bool;
    int j = 0;
    paramCanvas.save();
    if (paramRecyclerView.getClipToPadding()) {
      bool = paramRecyclerView.getPaddingLeft();
      i = paramRecyclerView.getWidth() - paramRecyclerView.getPaddingRight();
      paramCanvas.clipRect(bool, paramRecyclerView.getPaddingTop(), i, paramRecyclerView.getHeight() - paramRecyclerView.getPaddingBottom());
    } else {
      i = paramRecyclerView.getWidth();
      bool = false;
    } 
    int k = paramRecyclerView.getChildCount();
    while (j < k) {
      View view = paramRecyclerView.getChildAt(j);
      paramRecyclerView.getDecoratedBoundsWithMargins(view, this.mBounds);
      int m = this.mBounds.bottom;
      m = Math.round(ViewCompat.getTranslationY(view)) + m;
      int n = this.mDivider.getIntrinsicHeight();
      this.mDivider.setBounds(bool, m - n, i, m);
      this.mDivider.draw(paramCanvas);
      j++;
    } 
    paramCanvas.restore();
  }
  
  public void getItemOffsets(Rect paramRect, View paramView, RecyclerView paramRecyclerView, RecyclerView$State paramRecyclerView$State) {
    if (this.mOrientation == 1) {
      paramRect.set(0, 0, 0, this.mDivider.getIntrinsicHeight());
      return;
    } 
    paramRect.set(0, 0, this.mDivider.getIntrinsicWidth(), 0);
  }
  
  public void onDraw(Canvas paramCanvas, RecyclerView paramRecyclerView, RecyclerView$State paramRecyclerView$State) {
    if (paramRecyclerView.getLayoutManager() == null)
      return; 
    if (this.mOrientation == 1) {
      drawVertical(paramCanvas, paramRecyclerView);
      return;
    } 
    drawHorizontal(paramCanvas, paramRecyclerView);
  }
  
  public void setDrawable(@NonNull Drawable paramDrawable) {
    if (paramDrawable == null)
      throw new IllegalArgumentException("Drawable cannot be null."); 
    this.mDivider = paramDrawable;
  }
  
  public void setOrientation(int paramInt) {
    if (paramInt != 0 && paramInt != 1)
      throw new IllegalArgumentException("Invalid orientation. It should be either HORIZONTAL or VERTICAL"); 
    this.mOrientation = paramInt;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\DividerItemDecoration.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */