package br.com.santander.investimentoV2.shared.commons.tooltip;

import android.content.Context;
import android.graphics.Rect;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import ky;

public class TooltipView extends FrameLayout {
  private TextView a;
  
  private ImageView b;
  
  private MenuItem c;
  
  private MenuItem.OnMenuItemClickListener d;
  
  public TooltipView(Context paramContext) {
    this(paramContext, (AttributeSet)null);
  }
  
  public TooltipView(Context paramContext, AttributeSet paramAttributeSet) {
    this(paramContext, paramAttributeSet, 16843480);
  }
  
  public TooltipView(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    setClickable(true);
    setLongClickable(true);
    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(getResources().getDimensionPixelSize(ky.action_button_width) - getResources().getDimensionPixelSize(ky.action_button_padding), -2, 17);
    this.a = new TextView(paramContext);
    this.b = new ImageView(paramContext);
    this.a.setDuplicateParentStateEnabled(true);
    this.b.setDuplicateParentStateEnabled(true);
    addView((View)this.a, (ViewGroup.LayoutParams)layoutParams);
    addView((View)this.b, (ViewGroup.LayoutParams)layoutParams);
  }
  
  @Nullable
  public MenuItem a() {
    return this.c;
  }
  
  public boolean performClick() {
    if (this.d != null)
      this.d.onMenuItemClick(this.c); 
    return super.performClick();
  }
  
  public boolean performLongClick() {
    if (this.c != null && !TextUtils.isEmpty(this.c.getTitle())) {
      int[] arrayOfInt = new int[2];
      Rect rect = new Rect();
      getLocationOnScreen(arrayOfInt);
      getWindowVisibleDisplayFrame(rect);
      Context context = getContext();
      int i = getWidth();
      int j = getHeight();
      int k = arrayOfInt[1];
      int m = j / 2;
      int n = (context.getResources().getDisplayMetrics()).widthPixels;
      Toast toast = Toast.makeText(context, this.c.getTitle(), 0);
      if (k + m < rect.height()) {
        toast.setGravity(8388661, n - arrayOfInt[0] - i / 2, j);
      } else {
        toast.setGravity(81, 0, j);
      } 
      toast.show();
    } 
    return super.performLongClick();
  }
  
  public void setMenuItem(@NonNull MenuItem paramMenuItem) {
    if (this.c != paramMenuItem) {
      this.c = paramMenuItem;
      View view = paramMenuItem.getActionView();
      if (view != null && view.equals(this)) {
        if (paramMenuItem.getIcon() != null) {
          this.b.setImageDrawable(paramMenuItem.getIcon());
          return;
        } 
      } else {
        return;
      } 
    } else {
      return;
    } 
    if (paramMenuItem.getTitle() != null) {
      this.a.setText(paramMenuItem.getTitle());
      return;
    } 
  }
  
  public void setOnMenuItemClick(MenuItem.OnMenuItemClickListener paramOnMenuItemClickListener) {
    this.d = paramOnMenuItemClickListener;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\investimentoV2\shared\commons\tooltip\TooltipView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */