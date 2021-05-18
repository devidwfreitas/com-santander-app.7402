import android.app.DatePickerDialog;
import android.app.Dialog;
import android.content.Context;
import android.database.DataSetObserver;
import android.support.v4.app.FragmentManager;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.DatePicker;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.santander.app.components.view.SegmentTextView;
import java.io.Serializable;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;

public class inp extends BaseAdapter implements DatePickerDialog.OnDateSetListener, Serializable {
  public Boolean a;
  
  private ArrayList<ioi> b;
  
  private Context c;
  
  private LayoutInflater d;
  
  private FragmentManager e;
  
  private AppCompatActivity f;
  
  private TextView g;
  
  private TextView h;
  
  private String i;
  
  private String j;
  
  private int k;
  
  private ArrayList<DataSetObserver> l = new ArrayList<DataSetObserver>();
  
  public inp(ArrayList<ioi> paramArrayList, Context paramContext, AppCompatActivity paramAppCompatActivity, DataSetObserver paramDataSetObserver) {
    this.b = paramArrayList;
    this.c = paramContext;
    this.f = paramAppCompatActivity;
    this.l.add(paramDataSetObserver);
    this.d = LayoutInflater.from(paramContext);
  }
  
  private boolean a() {
    this.i = ((ioi)this.b.get(this.k)).f();
    this.j = ((ioi)this.b.get(this.k)).g();
    if (this.i != "" && this.i != null && this.j != "" && this.j != null) {
      Date date1 = a(this.i);
      Date date2 = a(this.j);
      if (date1.after(date2) || date1.equals(date2)) {
        ((ioi)this.b.get(this.k)).e("");
        ((ioi)this.b.get(this.k)).f("");
        return false;
      } 
      return true;
    } 
    return true;
  }
  
  private void b() {
    Dialog dialog = new Dialog(this.c, 2131427876);
    dialog.setContentView(2130968968);
    ((TextView)dialog.findViewById(2131756914)).setText("A data inicial deve ser menor que a final.");
    ((SegmentTextView)dialog.findViewById(2131756525)).setText("Alerta");
    ((Button)dialog.findViewById(2131756931)).setOnClickListener(new int(this, dialog));
    dialog.show();
  }
  
  public Date a(String paramString) {
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy");
    try {
      return simpleDateFormat.parse(paramString);
    } catch (ParseException parseException) {
      throw new RuntimeException(parseException);
    } 
  }
  
  public int getCount() {
    return this.b.size();
  }
  
  public Object getItem(int paramInt) {
    return this.b.get(paramInt);
  }
  
  public long getItemId(int paramInt) {
    return 0L;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup) {
    Log.d("Santander", "adapter getview");
    paramView = this.d.inflate(2130969115, null);
    TextView textView1 = (TextView)paramView.findViewById(2131757613);
    TextView textView2 = (TextView)paramView.findViewById(2131757622);
    TextView textView3 = (TextView)paramView.findViewById(2131757623);
    Button button = (Button)paramView.findViewById(2131757643);
    LinearLayout linearLayout = (LinearLayout)paramView.findViewById(2131757644);
    ImageView imageView1 = (ImageView)paramView.findViewById(2131757614);
    ImageView imageView2 = (ImageView)paramView.findViewById(2131757616);
    this.g = (TextView)paramView.findViewById(2131757615);
    this.h = (TextView)paramView.findViewById(2131757617);
    textView1.setText(((ioi)this.b.get(paramInt)).b());
    textView2.setText(((ioi)this.b.get(paramInt)).c());
    textView3.setText(((ioi)this.b.get(paramInt)).d());
    if (((ioi)this.b.get(paramInt)).e()) {
      this.g.setText(((ioi)this.b.get(paramInt)).f());
      this.h.setText(((ioi)this.b.get(paramInt)).g());
      linearLayout.setVisibility(0);
      button.setVisibility(8);
    } 
    button.setOnClickListener(new inq(this, paramInt, linearLayout, button));
    imageView1.setOnClickListener(new inr(this, paramInt));
    imageView2.setOnClickListener(new ins(this, paramInt));
    return paramView;
  }
  
  public void notifyDataSetChanged() {
    Iterator<DataSetObserver> iterator = this.l.iterator();
    while (iterator.hasNext())
      ((DataSetObserver)iterator.next()).onChanged(); 
    super.notifyDataSetChanged();
  }
  
  public void onDateSet(DatePicker paramDatePicker, int paramInt1, int paramInt2, int paramInt3) {
    // Byte code:
    //   0: invokestatic getInstance : ()Ljava/util/Calendar;
    //   3: astore #6
    //   5: aload #6
    //   7: iconst_1
    //   8: iload_2
    //   9: invokevirtual set : (II)V
    //   12: aload #6
    //   14: iconst_2
    //   15: iload_3
    //   16: invokevirtual set : (II)V
    //   19: aload #6
    //   21: iconst_5
    //   22: iload #4
    //   24: invokevirtual set : (II)V
    //   27: new java/text/SimpleDateFormat
    //   30: dup
    //   31: ldc 'dd/MM/yyyy'
    //   33: invokespecial <init> : (Ljava/lang/String;)V
    //   36: astore_1
    //   37: invokestatic getInstance : ()Ljava/util/Calendar;
    //   40: astore #5
    //   42: aload #5
    //   44: aload_1
    //   45: aload_1
    //   46: aload #6
    //   48: invokevirtual getTime : ()Ljava/util/Date;
    //   51: invokevirtual format : (Ljava/util/Date;)Ljava/lang/String;
    //   54: invokevirtual toString : ()Ljava/lang/String;
    //   57: invokevirtual parse : (Ljava/lang/String;)Ljava/util/Date;
    //   60: invokevirtual setTime : (Ljava/util/Date;)V
    //   63: aload_0
    //   64: getfield a : Ljava/lang/Boolean;
    //   67: invokevirtual booleanValue : ()Z
    //   70: ifeq -> 133
    //   73: aload_0
    //   74: getfield b : Ljava/util/ArrayList;
    //   77: aload_0
    //   78: getfield k : I
    //   81: invokevirtual get : (I)Ljava/lang/Object;
    //   84: checkcast ioi
    //   87: aload_1
    //   88: aload #5
    //   90: invokevirtual getTime : ()Ljava/util/Date;
    //   93: invokevirtual format : (Ljava/util/Date;)Ljava/lang/String;
    //   96: invokevirtual e : (Ljava/lang/String;)V
    //   99: aload_0
    //   100: invokespecial a : ()Z
    //   103: ifeq -> 128
    //   106: aload_0
    //   107: invokevirtual notifyDataSetChanged : ()V
    //   110: return
    //   111: astore #6
    //   113: ldc_w 'Error'
    //   116: aload #6
    //   118: invokevirtual getMessage : ()Ljava/lang/String;
    //   121: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   124: pop
    //   125: goto -> 63
    //   128: aload_0
    //   129: invokespecial b : ()V
    //   132: return
    //   133: aload_0
    //   134: getfield b : Ljava/util/ArrayList;
    //   137: aload_0
    //   138: getfield k : I
    //   141: invokevirtual get : (I)Ljava/lang/Object;
    //   144: checkcast ioi
    //   147: aload_1
    //   148: aload #5
    //   150: invokevirtual getTime : ()Ljava/util/Date;
    //   153: invokevirtual format : (Ljava/util/Date;)Ljava/lang/String;
    //   156: invokevirtual f : (Ljava/lang/String;)V
    //   159: aload_0
    //   160: invokespecial a : ()Z
    //   163: ifeq -> 171
    //   166: aload_0
    //   167: invokevirtual notifyDataSetChanged : ()V
    //   170: return
    //   171: aload_0
    //   172: invokespecial b : ()V
    //   175: return
    // Exception table:
    //   from	to	target	type
    //   42	63	111	java/text/ParseException
  }
  
  public void registerDataSetObserver(DataSetObserver paramDataSetObserver) {
    super.registerDataSetObserver(paramDataSetObserver);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\inp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */