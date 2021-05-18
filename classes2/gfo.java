import android.app.DatePickerDialog;
import android.widget.DatePicker;
import com.santander.app.carteiradiaria.presentation.ListagemCarteiraDiariaActivity;
import java.text.SimpleDateFormat;
import java.util.Calendar;

public class gfo implements DatePickerDialog.OnDateSetListener {
  public gfo(ListagemCarteiraDiariaActivity paramListagemCarteiraDiariaActivity) {}
  
  public void onDateSet(DatePicker paramDatePicker, int paramInt1, int paramInt2, int paramInt3) {
    if (paramDatePicker.isShown()) {
      ListagemCarteiraDiariaActivity.a(this.a, Calendar.getInstance());
      ListagemCarteiraDiariaActivity.e(this.a).set(paramInt1, paramInt2, paramInt3);
      ListagemCarteiraDiariaActivity.a(this.a, (new SimpleDateFormat("dd/MM/yyyy")).format(ListagemCarteiraDiariaActivity.e(this.a).getTime()));
      ListagemCarteiraDiariaActivity.f(this.a).setText(ListagemCarteiraDiariaActivity.c(this.a));
      ListagemCarteiraDiariaActivity.d(this.a).a(ListagemCarteiraDiariaActivity.b(this.a).getIndexConta(), ListagemCarteiraDiariaActivity.c(this.a));
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */