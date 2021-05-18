package android.support.v4.animation;

class GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator$1 implements Runnable {
  public void run() {
    float f = (float)(GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator.access$000(GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator.this) - GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator.access$100(GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator.this)) * 1.0F / (float)GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator.access$200(GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator.this);
    if (f > 1.0F || GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator.this.mTarget.getParent() == null)
      f = 1.0F; 
    GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator.access$302(GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator.this, f);
    GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator.access$400(GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator.this);
    if (GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator.access$300(GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator.this) >= 1.0F) {
      GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator.access$500(GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator.this);
      return;
    } 
    GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator.this.mTarget.postDelayed(GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator.access$600(GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator.this), 16L);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\animation\GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */