import android.support.v7.widget.AppCompatSpinner;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.SpinnerAdapter;
import com.santander.app.emprestimo.creditopessoal.domain.ConsignadoDadoObrigatorio;

class hog extends hoc implements AdapterView.OnItemSelectedListener {
  private AppCompatSpinner d = (AppCompatSpinner)this.itemView.findViewById(2131755093);
  
  hog(hob paramhob, ViewGroup paramViewGroup) {
    super(paramhob, LayoutInflater.from(paramViewGroup.getContext()).inflate(2130968766, paramViewGroup, false));
    this.d.setOnItemSelectedListener(this);
  }
  
  void a(ConsignadoDadoObrigatorio paramConsignadoDadoObrigatorio) {
    super.a(paramConsignadoDadoObrigatorio);
    ArrayAdapter arrayAdapter = new ArrayAdapter(this.itemView.getContext(), 2130969470, paramConsignadoDadoObrigatorio.getData());
    arrayAdapter.setDropDownViewResource(2130969469);
    this.d.setAdapter((SpinnerAdapter)arrayAdapter);
    this.d.setSelection(0);
  }
  
  public void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
    a(this.a.getData().get(paramInt));
  }
  
  public void onNothingSelected(AdapterView<?> paramAdapterView) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hog.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */