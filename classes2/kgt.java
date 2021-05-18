import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.santander.app.recargatelefone.recargaconfirmacao.presnetation.RecargaConfirmacaoActivity;
import java.io.Serializable;
import java.util.List;

public class kgt extends Fragment implements kgv {
  private Button a;
  
  private ListView b;
  
  private kgx c;
  
  private kgq d;
  
  private kgu e;
  
  private Dialog f;
  
  public void a() {
    this.d.notifyDataSetChanged();
  }
  
  public void a(int paramInt, kgj paramkgj) {
    Intent intent = new Intent((Context)getActivity(), RecargaConfirmacaoActivity.class);
    intent.putExtra("tipo_recarga", paramInt);
    intent.putExtra("response", (Serializable)paramkgj);
    startActivity(intent);
  }
  
  public void a(String paramString) {
    hat.d().a((Activity)getActivity(), paramString);
  }
  
  public void a(List<kgm> paramList) {
    this.d = new kgq(getContext(), paramList, this.c);
    this.b.setAdapter((ListAdapter)this.d);
    this.b.setCacheColorHint(0);
    this.b.setOnItemClickListener(this.c.c());
  }
  
  public void a(kgu paramkgu) {
    this.e = paramkgu;
  }
  
  public void b() {
    (new AlertDialog.Builder(getContext())).setMessage("Você quer remover essa recarga?").setPositiveButton("Eliminar", this.c.b()).setNegativeButton("Cancelar", this.c.b()).show();
  }
  
  public void c() {
    if (this.f != null) {
      this.f.cancel();
      this.f = null;
    } 
  }
  
  public void d() {
    this.f = mxn.b((Activity)getActivity());
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(2130969075, paramViewGroup, false);
    this.c = new kgx(this);
    this.c.a(this.e);
    this.a = (Button)view.findViewById(2131757487);
    this.a.setOnClickListener(this.c.a());
    this.b = (ListView)view.findViewById(2131757488);
    this.b.setOnItemLongClickListener(this.c.a(this.b));
    return view;
  }
  
  public void onDestroyView() {
    super.onDestroyView();
  }
  
  public void onStop() {
    super.onStop();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kgt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */