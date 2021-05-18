final class cea implements cex {
  public float getInterpolation(float paramFloat) {
    return (paramFloat == 1.0F) ? 1.0F : -((float)Math.pow(2.0D, ((1.0F + paramFloat) * -10.0F)));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cea.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */