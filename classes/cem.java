final class cem implements cex {
  public float getInterpolation(float paramFloat) {
    return 1.0F - cdt.A.getInterpolation(1.0F - paramFloat);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cem.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */