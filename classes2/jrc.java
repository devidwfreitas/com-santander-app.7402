import android.content.Intent;

public class jrc implements jrb {
  private jqz a;
  
  public jrc(jqz paramjqz, Intent paramIntent) {
    this.a = paramjqz;
    if (paramIntent.getBooleanExtra("sucesso", false)) {
      paramjqz.a();
      return;
    } 
    paramjqz.a(paramIntent.getStringExtra("erro"));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jrc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */