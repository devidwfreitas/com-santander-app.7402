import android.util.Log;
import android.view.View;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;

class kjs implements View.OnClickListener {
  kjs(kjo paramkjo) {}
  
  public void onClick(View paramView) {
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy");
    try {
      Calendar calendar = Calendar.getInstance();
      calendar.setTime(simpleDateFormat.parse(kjo.a(this.a).v()));
      frq.d("Outros_RecargaDeTelefone_RecargaProgramada_DataPeriodoFim_Acao", (new SimpleDateFormat("dd/MM/yyyy")).format(simpleDateFormat.parse(kjo.a(this.a).v())));
      kjo.a(this.a).a(calendar, kjo.f(this.a));
      return;
    } catch (ParseException parseException) {
      Log.e("Error", parseException.getMessage());
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kjs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */