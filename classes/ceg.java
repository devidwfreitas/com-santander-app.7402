final class ceg implements cex {
  public float getInterpolation(float paramFloat) {
    if (paramFloat == 0.0F)
      return 0.0F; 
    if (paramFloat == 1.0F)
      return 1.0F; 
    float f1 = 0.3F / 6.2831855F;
    float f2 = (float)Math.asin(1.0D);
    paramFloat--;
    float f3 = (float)Math.pow(2.0D, (10.0F * paramFloat));
    return -((float)Math.sin((paramFloat - f1 * f2) * 6.283185307179586D / 0.3F) * f3);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ceg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */