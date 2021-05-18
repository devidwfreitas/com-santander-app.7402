import android.content.Intent;
import android.net.Uri;
import android.view.View;

class jmp implements View.OnClickListener {
  jmp(jmn paramjmn, String paramString1, String paramString2) {}
  
  public void onClick(View paramView) {
    frq.d("Outros_Agencias_TracarRota_DesejaAcessarOutroAplicativo_PopUp_Acao", "Continuar");
    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("google.navigation:q=" + this.a + "," + this.b));
    jmn.a(this.c).startActivity(intent);
    jmn.b(this.c);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jmp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */