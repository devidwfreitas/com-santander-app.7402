package android.support.design.widget;

class FloatingActionButtonGingerbread$ElevateToTranslationZAnimation extends FloatingActionButtonGingerbread$ShadowAnimatorImpl {
  FloatingActionButtonGingerbread$ElevateToTranslationZAnimation() {
    super(paramFloatingActionButtonGingerbread, null);
  }
  
  protected float getTargetShadowSize() {
    return FloatingActionButtonGingerbread.this.mElevation + FloatingActionButtonGingerbread.this.mPressedTranslationZ;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\FloatingActionButtonGingerbread$ElevateToTranslationZAnimation.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */