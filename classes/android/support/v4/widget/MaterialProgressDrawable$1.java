package android.support.v4.widget;

import android.view.animation.Animation;
import android.view.animation.Transformation;

class MaterialProgressDrawable$1 extends Animation {
  public void applyTransformation(float paramFloat, Transformation paramTransformation) {
    if (MaterialProgressDrawable.this.mFinishing) {
      MaterialProgressDrawable.this.applyFinishTranslation(paramFloat, ring);
      return;
    } 
    float f1 = MaterialProgressDrawable.this.getMinProgressArc(ring);
    float f2 = ring.getStartingEndTrim();
    float f4 = ring.getStartingStartTrim();
    float f3 = ring.getStartingRotation();
    MaterialProgressDrawable.this.updateRingColor(paramFloat, ring);
    if (paramFloat <= 0.5F) {
      float f = paramFloat / 0.5F;
      f = MaterialProgressDrawable.MATERIAL_INTERPOLATOR.getInterpolation(f);
      ring.setStartTrim(f4 + f * (0.8F - f1));
    } 
    if (paramFloat > 0.5F) {
      f4 = (paramFloat - 0.5F) / 0.5F;
      f4 = MaterialProgressDrawable.MATERIAL_INTERPOLATOR.getInterpolation(f4);
      ring.setEndTrim((0.8F - f1) * f4 + f2);
    } 
    ring.setRotation(0.25F * paramFloat + f3);
    f1 = MaterialProgressDrawable.this.mRotationCount / 5.0F;
    MaterialProgressDrawable.this.setRotation(216.0F * paramFloat + 1080.0F * f1);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\widget\MaterialProgressDrawable$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */