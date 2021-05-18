final class cel implements cex {
  public float getInterpolation(float paramFloat) {
    paramFloat /= 0.5F;
    if (paramFloat < 1.0F) {
      float f1 = 1.70158F * 1.525F;
      return (paramFloat * (1.0F + f1) - f1) * paramFloat * paramFloat * 0.5F;
    } 
    paramFloat -= 2.0F;
    float f = 1.70158F * 1.525F;
    return ((f + paramFloat * (1.0F + f)) * paramFloat * paramFloat + 2.0F) * 0.5F;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cel.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */