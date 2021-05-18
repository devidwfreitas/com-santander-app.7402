import android.widget.RatingBar;

class lyr implements RatingBar.OnRatingBarChangeListener {
  lyr(lyp paramlyp) {}
  
  public void onRatingChanged(RatingBar paramRatingBar, float paramFloat, boolean paramBoolean) {
    kvk kvk = kvk.getEnum(Math.round(paramFloat));
    lyp.a(this.a, kvk);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lyr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */