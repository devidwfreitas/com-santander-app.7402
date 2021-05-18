package android.support.v4.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.graphics.drawable.shapes.Shape;
import android.os.Build;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.ViewCompat;
import android.view.View;
import android.view.animation.Animation;
import android.widget.ImageView;

class CircleImageView extends ImageView {
  private static final int FILL_SHADOW_COLOR = 1023410176;
  
  private static final int KEY_SHADOW_COLOR = 503316480;
  
  private static final int SHADOW_ELEVATION = 4;
  
  private static final float SHADOW_RADIUS = 3.5F;
  
  private static final float X_OFFSET = 0.0F;
  
  private static final float Y_OFFSET = 1.75F;
  
  private Animation.AnimationListener mListener;
  
  int mShadowRadius;
  
  CircleImageView(Context paramContext, int paramInt) {
    super(paramContext);
    ShapeDrawable shapeDrawable;
    float f = (getContext().getResources().getDisplayMetrics()).density;
    int i = (int)(1.75F * f);
    int j = (int)(0.0F * f);
    this.mShadowRadius = (int)(3.5F * f);
    if (elevationSupported()) {
      shapeDrawable = new ShapeDrawable((Shape)new OvalShape());
      ViewCompat.setElevation((View)this, f * 4.0F);
    } else {
      shapeDrawable = new ShapeDrawable((Shape)new CircleImageView$OvalShadow(this, this.mShadowRadius));
      ViewCompat.setLayerType((View)this, 1, shapeDrawable.getPaint());
      shapeDrawable.getPaint().setShadowLayer(this.mShadowRadius, j, i, 503316480);
      i = this.mShadowRadius;
      setPadding(i, i, i, i);
    } 
    shapeDrawable.getPaint().setColor(paramInt);
    ViewCompat.setBackground((View)this, (Drawable)shapeDrawable);
  }
  
  private boolean elevationSupported() {
    return (Build.VERSION.SDK_INT >= 21);
  }
  
  public void onAnimationEnd() {
    super.onAnimationEnd();
    if (this.mListener != null)
      this.mListener.onAnimationEnd(getAnimation()); 
  }
  
  public void onAnimationStart() {
    super.onAnimationStart();
    if (this.mListener != null)
      this.mListener.onAnimationStart(getAnimation()); 
  }
  
  protected void onMeasure(int paramInt1, int paramInt2) {
    super.onMeasure(paramInt1, paramInt2);
    if (!elevationSupported())
      setMeasuredDimension(getMeasuredWidth() + this.mShadowRadius * 2, getMeasuredHeight() + this.mShadowRadius * 2); 
  }
  
  public void setAnimationListener(Animation.AnimationListener paramAnimationListener) {
    this.mListener = paramAnimationListener;
  }
  
  public void setBackgroundColor(int paramInt) {
    if (getBackground() instanceof ShapeDrawable)
      ((ShapeDrawable)getBackground()).getPaint().setColor(paramInt); 
  }
  
  public void setBackgroundColorRes(int paramInt) {
    setBackgroundColor(ContextCompat.getColor(getContext(), paramInt));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\widget\CircleImageView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */