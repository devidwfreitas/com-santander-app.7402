final class cev implements cex {
  public float getInterpolation(float paramFloat) {
    paramFloat--;
    return -(paramFloat * paramFloat * paramFloat * paramFloat - 1.0F);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cev.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */