import android.content.Context;
import android.content.Intent;
import com.santander.app.transferencia.presentation.ListagemTodosBancosActivity;
import java.io.Serializable;

class lpv implements gkw {
  lpv(lpu paramlpu) {}
  
  public void a(Object paramObject) {
    if (paramObject == null) {
      mhj.c((Context)this.a.b, this.a.b.getResources().getString(2131297122));
      return;
    } 
    paramObject = paramObject;
    if (paramObject != null && paramObject.b() != null && !paramObject.b().isEmpty()) {
      Intent intent = new Intent((Context)this.a.b, ListagemTodosBancosActivity.class);
      intent.putExtra("todosBancos", (Serializable)paramObject.b());
      this.a.b.startActivityForResult(intent, 8888);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lpv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */