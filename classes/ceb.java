final class ceb implements cex {
  public float getInterpolation(float paramFloat) {
    if (paramFloat == 0.0F)
      return 0.0F; 
    if (paramFloat == 1.0F)
      return 1.0F; 
    paramFloat /= 0.5F;
    return (paramFloat < 1.0F) ? ((float)Math.pow(2.0D, ((paramFloat - 1.0F) * 10.0F)) * 0.5F) : ((-((float)Math.pow(2.0D, ((paramFloat - 1.0F) * -10.0F))) + 2.0F) * 0.5F);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ceb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */