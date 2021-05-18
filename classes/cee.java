final class cee implements cex {
  public float getInterpolation(float paramFloat) {
    paramFloat /= 0.5F;
    if (paramFloat < 1.0F)
      return ((float)Math.sqrt((1.0F - paramFloat * paramFloat)) - 1.0F) * -0.5F; 
    paramFloat -= 2.0F;
    return ((float)Math.sqrt((1.0F - paramFloat * paramFloat)) + 1.0F) * 0.5F;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cee.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */