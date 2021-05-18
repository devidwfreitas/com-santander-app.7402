import android.app.DialogFragment;
import android.app.FragmentManager;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.santander.app.components.view.SegmentEditText;
import java.util.List;

public class khh extends DialogFragment implements khi {
  private ListView a;
  
  private khj b;
  
  private String c = "ListaOperadorasDialogFragment";
  
  public void a(String paramString, int paramInt) {
    this.b.a(paramString, paramInt);
    dismiss();
  }
  
  public void a(List<String> paramList) {
    this.a.setAdapter((ListAdapter)new ArrayAdapter((Context)getActivity(), 2130969346, paramList));
  }
  
  public void a(khj paramkhj) {
    this.b = paramkhj;
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle) {
    getDialog().getWindow().requestFeature(1);
    View view = paramLayoutInflater.inflate(2130968975, paramViewGroup, false);
    SegmentEditText segmentEditText = (SegmentEditText)view.findViewById(2131756947);
    this.a = (ListView)view.findViewById(2131756948);
    khl khl = new khl(this);
    this.a.setOnItemClickListener(khl.a());
    segmentEditText.addTextChangedListener(khl.b());
    return view;
  }
  
  public void show(FragmentManager paramFragmentManager, String paramString) {
    super.show(paramFragmentManager, paramString);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\khh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */