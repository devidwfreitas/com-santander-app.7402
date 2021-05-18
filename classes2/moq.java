import android.content.Intent;
import android.view.View;
import com.santander.app.transferencia.presentation.ListagemTodosBancosActivity;
import java.io.Serializable;

public class moq implements View.OnClickListener {
  public moq(ListagemTodosBancosActivity paramListagemTodosBancosActivity) {}
  
  public void onClick(View paramView) {
    mkq mkq = (mkq)paramView.getTag();
    Intent intent = new Intent();
    intent.putExtra("result", (Serializable)mkq);
    this.a.setResult(-1, intent);
    this.a.finish();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\moq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */