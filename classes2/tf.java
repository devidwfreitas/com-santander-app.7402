import android.util.Log;

class tf implements ih {
  tf(te paramte, tj paramtj) {}
  
  public void onFailure(is paramis) {
    this.a.a(new aby(paramis.a().intValue(), paramis.b()));
  }
  
  public void onSuccess(is paramis) {
    try {
      Log.i("###Portfolio", "Response :" + paramis.c().toString());
      tm tm = (new eju()).j().<tm>a(paramis.c().toString(), tm.class);
      tm.g();
      this.a.a((abv)tm);
      return;
    } catch (Exception exception) {
      this.a.a(new aby("-1", te.a(this.b).getResources().getString(lg.error_generic), exception));
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\tf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */