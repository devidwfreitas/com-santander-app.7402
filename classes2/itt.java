import android.os.AsyncTask;

public class itt extends AsyncTask<Void, Void, Boolean> {
  private gkv a;
  
  public itt(gkv paramgkv) {
    this.a = paramgkv;
  }
  
  protected Boolean a(Void... paramVarArgs) {
    fwo fwo;
    miq miq = miq.C();
    paramVarArgs = null;
    hat.b().a();
    byte[] arrayOfByte = miq.h();
    String str = miq.i();
    if (arrayOfByte == null || arrayOfByte.length == 0 || str == null || str.trim().isEmpty())
      fwo = hat.b().b(); 
    if (fwo != null) {
      boolean bool1 = true;
      return Boolean.valueOf(bool1);
    } 
    boolean bool = false;
    return Boolean.valueOf(bool);
  }
  
  protected void a(Boolean paramBoolean) {
    super.onPostExecute(paramBoolean);
    if (this.a != null)
      this.a.a(paramBoolean); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\itt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */