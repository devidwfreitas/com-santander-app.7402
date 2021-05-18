package com.facebook.share.internal;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import bjr;
import bjs;
import byb;
import byc;

public class LikeBoxCountView extends FrameLayout {
  private TextView a;
  
  private byc b = byc.LEFT;
  
  private float c;
  
  private float d;
  
  private float e;
  
  private Paint f;
  
  private int g;
  
  private int h;
  
  public LikeBoxCountView(Context paramContext) {
    super(paramContext);
    a(paramContext);
  }
  
  private void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    this.a.setPadding(this.g + paramInt1, this.g + paramInt2, this.g + paramInt3, this.g + paramInt4);
  }
  
  private void a(Context paramContext) {
    setWillNotDraw(false);
    this.c = getResources().getDimension(bjs.com_facebook_likeboxcountview_caret_height);
    this.d = getResources().getDimension(bjs.com_facebook_likeboxcountview_caret_width);
    this.e = getResources().getDimension(bjs.com_facebook_likeboxcountview_border_radius);
    this.f = new Paint();
    this.f.setColor(getResources().getColor(bjr.com_facebook_likeboxcountview_border_color));
    this.f.setStrokeWidth(getResources().getDimension(bjs.com_facebook_likeboxcountview_border_width));
    this.f.setStyle(Paint.Style.STROKE);
    b(paramContext);
    addView((View)this.a);
    setCaretPosition(this.b);
  }
  
  private void a(Canvas paramCanvas, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4) {
    Path path = new Path();
    float f = this.e * 2.0F;
    path.addArc(new RectF(paramFloat1, paramFloat2, paramFloat1 + f, paramFloat2 + f), -180.0F, 90.0F);
    if (this.b == byc.TOP) {
      path.lineTo((paramFloat3 - paramFloat1 - this.d) / 2.0F + paramFloat1, paramFloat2);
      path.lineTo((paramFloat3 - paramFloat1) / 2.0F + paramFloat1, paramFloat2 - this.c);
      path.lineTo((paramFloat3 - paramFloat1 + this.d) / 2.0F + paramFloat1, paramFloat2);
    } 
    path.lineTo(paramFloat3 - this.e, paramFloat2);
    path.addArc(new RectF(paramFloat3 - f, paramFloat2, paramFloat3, paramFloat2 + f), -90.0F, 90.0F);
    if (this.b == byc.RIGHT) {
      path.lineTo(paramFloat3, (paramFloat4 - paramFloat2 - this.d) / 2.0F + paramFloat2);
      path.lineTo(this.c + paramFloat3, (paramFloat4 - paramFloat2) / 2.0F + paramFloat2);
      path.lineTo(paramFloat3, (paramFloat4 - paramFloat2 + this.d) / 2.0F + paramFloat2);
    } 
    path.lineTo(paramFloat3, paramFloat4 - this.e);
    path.addArc(new RectF(paramFloat3 - f, paramFloat4 - f, paramFloat3, paramFloat4), 0.0F, 90.0F);
    if (this.b == byc.BOTTOM) {
      path.lineTo((paramFloat3 - paramFloat1 + this.d) / 2.0F + paramFloat1, paramFloat4);
      path.lineTo((paramFloat3 - paramFloat1) / 2.0F + paramFloat1, this.c + paramFloat4);
      path.lineTo((paramFloat3 - paramFloat1 - this.d) / 2.0F + paramFloat1, paramFloat4);
    } 
    path.lineTo(this.e + paramFloat1, paramFloat4);
    path.addArc(new RectF(paramFloat1, paramFloat4 - f, f + paramFloat1, paramFloat4), 90.0F, 90.0F);
    if (this.b == byc.LEFT) {
      path.lineTo(paramFloat1, (paramFloat4 - paramFloat2 + this.d) / 2.0F + paramFloat2);
      path.lineTo(paramFloat1 - this.c, (paramFloat4 - paramFloat2) / 2.0F + paramFloat2);
      path.lineTo(paramFloat1, (paramFloat4 - paramFloat2 - this.d) / 2.0F + paramFloat2);
    } 
    path.lineTo(paramFloat1, this.e + paramFloat2);
    paramCanvas.drawPath(path, this.f);
  }
  
  private void b(Context paramContext) {
    this.a = new TextView(paramContext);
    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
    this.a.setLayoutParams((ViewGroup.LayoutParams)layoutParams);
    this.a.setGravity(17);
    this.a.setTextSize(0, getResources().getDimension(bjs.com_facebook_likeboxcountview_text_size));
    this.a.setTextColor(getResources().getColor(bjr.com_facebook_likeboxcountview_text_color));
    this.g = getResources().getDimensionPixelSize(bjs.com_facebook_likeboxcountview_text_padding);
    this.h = getResources().getDimensionPixelSize(bjs.com_facebook_likeboxcountview_caret_height);
  }
  
  protected void onDraw(Canvas paramCanvas) {
    super.onDraw(paramCanvas);
    int m = getPaddingTop();
    int k = getPaddingLeft();
    int j = getWidth() - getPaddingRight();
    int i = getHeight() - getPaddingBottom();
    switch (byb.a[this.b.ordinal()]) {
      default:
        a(paramCanvas, k, m, j, i);
        return;
      case 4:
        i = (int)(i - this.c);
      case 1:
        k = (int)(k + this.c);
      case 2:
        m = (int)(m + this.c);
      case 3:
        break;
    } 
    j = (int)(j - this.c);
  }
  
  public void setCaretPosition(byc parambyc) {
    this.b = parambyc;
    switch (byb.a[parambyc.ordinal()]) {
      default:
        return;
      case 1:
        a(this.h, 0, 0, 0);
        return;
      case 2:
        a(0, this.h, 0, 0);
        return;
      case 3:
        a(0, 0, this.h, 0);
        return;
      case 4:
        break;
    } 
    a(0, 0, 0, this.h);
  }
  
  public void setText(String paramString) {
    this.a.setText(paramString);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\facebook\share\internal\LikeBoxCountView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */