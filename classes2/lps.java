public class lps extends grs {
  private boolean a = true;
  
  public boolean a() {
    return (!isFinishing() && this.a);
  }
  
  protected void onPause() {
    super.onPause();
    this.a = false;
  }
  
  protected void onResume() {
    super.onResume();
    this.a = true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lps.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */