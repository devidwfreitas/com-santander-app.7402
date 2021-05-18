import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.RelativeLayout;

public abstract class mic extends mia {
  private RelativeLayout a;
  
  private RecyclerView b;
  
  private Button c;
  
  private void a(View paramView) {
    this.a = (RelativeLayout)paramView.findViewById(2131756929);
    this.b = (RecyclerView)paramView.findViewById(2131756930);
    this.c = (Button)paramView.findViewById(2131756846);
    this.c.setOnClickListener(new mid(this));
  }
  
  private void b() {
    this.b.setLayoutManager((RecyclerView.LayoutManager)new LinearLayoutManager((Context)getActivity(), 1, false));
    this.b.setAdapter(a());
  }
  
  public abstract RecyclerView.Adapter a();
  
  @Nullable
  public View a(LayoutInflater paramLayoutInflater, @Nullable ViewGroup paramViewGroup, @Nullable Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(2130968967, paramViewGroup, false);
    a(view);
    b();
    return view;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mic.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */