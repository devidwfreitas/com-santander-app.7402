import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.annotation.StringRes;
import android.text.style.StyleSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

public class mur extends mso {
  @Nullable
  public View onCreateView(LayoutInflater paramLayoutInflater, @Nullable ViewGroup paramViewGroup, @Nullable Bundle paramBundle) {
    return paramLayoutInflater.inflate(2130969519, paramViewGroup, false);
  }
  
  public void onViewCreated(View paramView, @Nullable Bundle paramBundle) {
    super.onViewCreated(paramView, paramBundle);
    bfj bfj = new bfj();
    bfj.a("A transferência deve ser feita entre ");
    bfj.a("06:30hrs e 17:00hrs", new StyleSpan(1));
    bfj.a(" para que ocorra no mesmo dia.");
    bfj.a("\n");
    bfj.a("Deseja ");
    bfj.a("agendar", new StyleSpan(1));
    bfj.a(" para o ");
    bfj.a("próximo dia útil", new StyleSpan(1));
    bfj.a("?");
    ((TextView)paramView.findViewById(2131759568)).setText((CharSequence)bfj);
    paramView.findViewById(2131756148).setOnClickListener(new mus(this));
    paramView.findViewById(2131759601).setOnClickListener(new mut(this));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mur.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */