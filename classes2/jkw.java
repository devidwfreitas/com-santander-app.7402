import android.content.Intent;

public class jkw implements jkv {
  private jko a;
  
  public jkw(jko paramjko) {
    this.a = paramjko;
  }
  
  public void a(Intent paramIntent) {
    jda jda;
    if (paramIntent.hasExtra("tipo_produto")) {
      jda = (jda)paramIntent.getExtras().get("tipo_produto");
    } else {
      jda = null;
    } 
    if (jda != null) {
      switch (jkx.a[jda.ordinal()]) {
        default:
          return;
        case 1:
          this.a.a();
          return;
        case 2:
          this.a.b();
          return;
        case 3:
          break;
      } 
      this.a.c();
      if (paramIntent.getBooleanExtra("exibe_lista", false)) {
        this.a.d();
        return;
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jkw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */