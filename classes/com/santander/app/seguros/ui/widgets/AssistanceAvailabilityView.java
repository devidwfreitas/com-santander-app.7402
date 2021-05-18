package com.santander.app.seguros.ui.widgets;

import android.content.Context;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;

public class AssistanceAvailabilityView extends LinearLayout {
  public static final int a = 0;
  
  public static final int b = 1;
  
  public AssistanceAvailabilityView(Context paramContext) {
    this(paramContext, (AttributeSet)null);
  }
  
  public AssistanceAvailabilityView(Context paramContext, @Nullable AttributeSet paramAttributeSet) {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public AssistanceAvailabilityView(Context paramContext, @Nullable AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    setOrientation(0);
  }
  
  public void a(int paramInt1, int paramInt2) {
    int j = (int)getContext().getResources().getDimension(2131362036);
    int k = (int)getContext().getResources().getDimension(2131362076);
    if (paramInt1 == 0) {
      paramInt1 = 2130837684;
    } else {
      paramInt1 = 2130837682;
    } 
    removeAllViews();
    for (int i = 0; i < paramInt2; i++) {
      ImageView imageView = new ImageView(getContext());
      imageView.setBackgroundResource(paramInt1);
      imageView.setImageResource(2130838331);
      imageView.setScaleType(ImageView.ScaleType.CENTER);
      LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(j, j);
      layoutParams.setMargins(0, 0, k, 0);
      addView((View)imageView, (ViewGroup.LayoutParams)layoutParams);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\seguro\\ui\widgets\AssistanceAvailabilityView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */