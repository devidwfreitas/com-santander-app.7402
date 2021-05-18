import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.annotation.StringRes;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.santander.app.transfergolden.presentation.ComprovanteTransferGoldenActivity;

public class mum extends mso implements mup {
  private TextView b;
  
  private mvt c;
  
  public void a(gvb paramgvb) {
    Intent intent = new Intent(getContext(), ComprovanteTransferGoldenActivity.class);
    intent.putExtra("comprovanteBase", paramgvb);
    intent.addFlags(8388608);
    startActivity(intent);
  }
  
  public void c(@StringRes int paramInt) {
    this.b.setText(paramInt);
  }
  
  @Nullable
  public View onCreateView(LayoutInflater paramLayoutInflater, @Nullable ViewGroup paramViewGroup, @Nullable Bundle paramBundle) {
    return paramLayoutInflater.inflate(2130969509, paramViewGroup, false);
  }
  
  public void onDestroyView() {
    super.onDestroyView();
    this.c.a();
  }
  
  public void onViewCreated(View paramView, @Nullable Bundle paramBundle) {
    super.onViewCreated(paramView, paramBundle);
    mwm.s();
    this.b = (TextView)paramView.findViewById(2131759568);
    paramView.findViewById(2131759569).setOnClickListener(new mun(this));
    paramView.findViewById(2131759570).setOnClickListener(new muo(this));
    this.c = new mvu(this);
    this.c.a(getArguments());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mum.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */