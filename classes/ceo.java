final class ceo implements cex {
  public float getInterpolation(float paramFloat) {
    return (paramFloat < 0.5F) ? (cdt.z.getInterpolation(2.0F * paramFloat) * 0.5F) : (cdt.A.getInterpolation(2.0F * paramFloat - 1.0F) * 0.5F + 0.5F);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ceo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */