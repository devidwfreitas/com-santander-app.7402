import android.app.Dialog;
import android.app.DialogFragment;
import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.santander.app.seguros.ui.widgets.EquipmentItem;
import java.util.ArrayList;
import java.util.List;

public class lxx extends DialogFragment implements mbr {
  public static final String a = "status-key";
  
  public static final String b = "equipment-item";
  
  public static final String c = "position-item";
  
  private TextView d;
  
  private EditText e;
  
  private EditText f;
  
  private Button g;
  
  private Button h;
  
  private List<String> i;
  
  private List<EquipmentItem> j;
  
  private EquipmentItem k;
  
  private EquipmentItem l;
  
  private EquipmentItem m;
  
  private EquipmentItem n;
  
  private EquipmentItem o;
  
  private lye p;
  
  private lyd q;
  
  private kux r;
  
  private int s;
  
  private String t;
  
  private String a(String paramString) {
    String str = null;
    return paramString.equals(lyc.TV.name()) ? lyc.TV.getNameEquipment() : (paramString.equals(lyc.WASHING.name()) ? lyc.WASHING.getNameEquipment() : (paramString.equals(lyc.DVD.name()) ? lyc.DVD.getNameEquipment() : (paramString.equals(lyc.REFRIGERATOR.name()) ? lyc.REFRIGERATOR.getNameEquipment() : (paramString.equals(lyc.MICROWAVE.name()) ? lyc.MICROWAVE.getNameEquipment() : str))));
  }
  
  public static lxx a(lye paramlye) {
    Bundle bundle = new Bundle();
    bundle.putString("status-key", (new ejm()).b(paramlye));
    lxx lxx1 = new lxx();
    lxx1.setArguments(bundle);
    return lxx1;
  }
  
  public static lxx a(lye paramlye, kux paramkux, int paramInt) {
    Bundle bundle = new Bundle();
    bundle.putString("status-key", (new ejm()).b(paramlye));
    bundle.putString("equipment-item", (new ejm()).b(paramkux));
    bundle.putInt("position-item", paramInt);
    lxx lxx1 = new lxx();
    lxx1.setArguments(bundle);
    return lxx1;
  }
  
  private void a(int paramInt) {
    if (paramInt == 0 && this.j != null && this.j.size() > 0)
      for (paramInt = 0; paramInt < this.j.size(); paramInt++) {
        if (((EquipmentItem)this.j.get(paramInt)).b() == true)
          ((EquipmentItem)this.j.get(paramInt)).d(); 
      }  
  }
  
  private void a(View paramView) {
    this.d = (TextView)paramView.findViewById(2131755789);
    this.e = (EditText)paramView.findViewById(2131756922);
    this.f = (EditText)paramView.findViewById(2131756845);
    this.g = (Button)paramView.findViewById(2131756846);
    this.h = (Button)paramView.findViewById(2131756928);
    this.k = (EquipmentItem)paramView.findViewById(2131756923);
    this.l = (EquipmentItem)paramView.findViewById(2131756924);
    this.m = (EquipmentItem)paramView.findViewById(2131756925);
    this.n = (EquipmentItem)paramView.findViewById(2131756926);
    this.o = (EquipmentItem)paramView.findViewById(2131756927);
    this.k.setName(lyc.TV.name());
    this.l.setName(lyc.REFRIGERATOR.name());
    this.m.setName(lyc.MICROWAVE.name());
    this.n.setName(lyc.DVD.name());
    this.o.setName(lyc.WASHING.name());
    this.k.setListener(this);
    this.l.setListener(this);
    this.m.setListener(this);
    this.n.setListener(this);
    this.o.setListener(this);
    this.j = new ArrayList<EquipmentItem>();
    this.j.add(this.k);
    this.j.add(this.l);
    this.j.add(this.m);
    this.j.add(this.n);
    this.j.add(this.o);
    a();
    this.e.addTextChangedListener(new lxy(this));
    guj guj = new guj();
    guj.a(this.f);
    this.f.addTextChangedListener(guj);
  }
  
  private void a(lyc paramlyc) {
    for (int i = 0; i < this.j.size(); i++) {
      if (((EquipmentItem)this.j.get(i)).b() == true && !paramlyc.name().equals(((EquipmentItem)this.j.get(i)).a()))
        ((EquipmentItem)this.j.get(i)).d(); 
    } 
  }
  
  private void c() {
    if (this.p != null) {
      if (this.p.toString() == lye.ADD.toString()) {
        frq.d("Seguros_Sinistro_Acionar_EquipamentoDanificado_Acao", "Adicionar");
        this.d.setText(getResources().getString(2131296389));
        this.h.setText(getResources().getString(2131298504));
        return;
      } 
    } else {
      return;
    } 
    if (this.p.toString() == lye.EDIT.toString()) {
      frq.d("Seguros_Sinistro_Acionar_EquipamentoDanificado_Acao", "Editar");
      this.d.setText(getResources().getString(2131299207));
      this.h.setText(getResources().getString(2131297268));
      this.e.setText(this.r.a());
      d();
      this.f.setText(this.r.d());
      return;
    } 
  }
  
  private void d() {
    if (this.j != null && this.j.size() > 0 && this.r != null)
      for (int i = 0; i < this.j.size(); i++) {
        if (this.r.a().equals(a(((EquipmentItem)this.j.get(i)).a())))
          ((EquipmentItem)this.j.get(i)).c(); 
      }  
  }
  
  private boolean e() {
    if (this.e.getText().length() <= 0 && this.t.length() <= 0)
      return false; 
    try {
      if (Double.valueOf(this.t).doubleValue() <= 0.0D) {
        mhj.c((Context)getActivity(), getResources().getString(2131297388));
        return false;
      } 
    } catch (Exception exception) {
      return false;
    } 
    return true;
  }
  
  public void a() {
    this.g.setOnClickListener(new lxz(this));
    this.h.setOnClickListener(new lya(this));
  }
  
  public void a(lyd paramlyd) {
    this.q = paramlyd;
  }
  
  public void a(boolean paramBoolean, String paramString) {
    if (paramBoolean == true) {
      switch (lyb.b[lyc.valueOf(paramString).ordinal()]) {
        default:
          this.e.setText("");
          return;
        case 1:
          this.e.setText(lyc.TV.getNameEquipment());
          a(lyc.TV);
          return;
        case 2:
          this.e.setText(lyc.REFRIGERATOR.getNameEquipment());
          a(lyc.REFRIGERATOR);
          return;
        case 3:
          this.e.setText(lyc.MICROWAVE.getNameEquipment());
          a(lyc.MICROWAVE);
          return;
        case 4:
          this.e.setText(lyc.DVD.getNameEquipment());
          a(lyc.DVD);
          return;
        case 5:
          break;
      } 
      this.e.setText(lyc.WASHING.getNameEquipment());
      a(lyc.WASHING);
      return;
    } 
    this.e.setText("");
  }
  
  public lye b() {
    return this.p;
  }
  
  public void b(lye paramlye) {
    this.p = paramlye;
  }
  
  public void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    if (getArguments() != null && getArguments().containsKey("status-key"))
      this.p = (new ejm()).<lye>a(getArguments().getString("status-key"), lye.class); 
    if (getArguments() != null && getArguments().containsKey("status-key") && getArguments().containsKey("equipment-item")) {
      this.p = (new ejm()).<lye>a(getArguments().getString("status-key"), lye.class);
      this.r = (new ejm()).<kux>a(getArguments().getString("equipment-item"), kux.class);
      this.s = getArguments().getInt("position-item");
    } 
  }
  
  public Dialog onCreateDialog(Bundle paramBundle) {
    Dialog dialog = super.onCreateDialog(paramBundle);
    dialog.getWindow().requestFeature(1);
    dialog.setCancelable(false);
    dialog.setCanceledOnTouchOutside(false);
    return dialog;
  }
  
  @Nullable
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(2130968966, paramViewGroup, false);
    a(view);
    c();
    return view;
  }
  
  public void onDestroyView() {
    super.onDestroyView();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lxx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */