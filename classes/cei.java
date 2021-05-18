final class cei implements cex {
  public float getInterpolation(float paramFloat) {
    if (paramFloat == 0.0F)
      return 0.0F; 
    float f1 = paramFloat / 0.5F;
    if (f1 == 2.0F)
      return 1.0F; 
    paramFloat = 0.45000002F / 6.2831855F * (float)Math.asin(1.0D);
    if (f1 < 1.0F) {
      f1--;
      float f = (float)Math.pow(2.0D, (10.0F * f1));
      return (float)Math.sin((f1 * 1.0F - paramFloat) * 6.283185307179586D / 0.45000002F) * f * -0.5F;
    } 
    f1--;
    float f2 = (float)Math.pow(2.0D, (-10.0F * f1));
    return (float)Math.sin((f1 * 1.0F - paramFloat) * 6.283185307179586D / 0.45000002F) * f2 * 0.5F + 1.0F;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cei.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */