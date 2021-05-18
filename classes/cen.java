final class cen implements cex {
  public float getInterpolation(float paramFloat) {
    if (paramFloat < 0.36363637F)
      return 7.5625F * paramFloat * paramFloat; 
    if (paramFloat < 0.72727275F) {
      paramFloat -= 0.54545456F;
      return paramFloat * 7.5625F * paramFloat + 0.75F;
    } 
    if (paramFloat < 0.90909094F) {
      paramFloat -= 0.8181818F;
      return paramFloat * 7.5625F * paramFloat + 0.9375F;
    } 
    paramFloat -= 0.95454544F;
    return paramFloat * 7.5625F * paramFloat + 0.984375F;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cen.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */