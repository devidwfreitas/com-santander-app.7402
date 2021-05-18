import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.TextView;
import com.santander.app.agendamentos.activity.AgendamentosActivity;
import com.santander.app.agendamentos.activity.AgendamentosDetalheActivity;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class fqq extends BaseAdapter implements View.OnClickListener {
  private static final int d = 1;
  
  private final Context b;
  
  private final List<String> c;
  
  private final String[] e = new String[] { 
      "Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho", "Julho", "Agosto", "Setembro", "Outubro", 
      "Novembro", "Dezembro" };
  
  private final int[] f = new int[] { 
      31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 
      30, 31 };
  
  private int g;
  
  private int h;
  
  private int i;
  
  private Button j;
  
  private TextView k;
  
  private final HashMap<String, Integer> l;
  
  public fqq(AgendamentosActivity paramAgendamentosActivity, Context paramContext, int paramInt1, int paramInt2, int paramInt3) {
    this.b = paramContext;
    this.c = new ArrayList<String>();
    Calendar calendar = Calendar.getInstance();
    e(calendar.get(5));
    b(calendar.get(7));
    a(paramInt2, paramInt3);
    this.l = b(paramInt3, paramInt2);
  }
  
  private void a(int paramInt1, int paramInt2) {
    int i;
    int j;
    int k;
    int m;
    int n;
    int i2 = paramInt1 - 1;
    this.g = d(i2);
    GregorianCalendar gregorianCalendar = new GregorianCalendar(paramInt2, i2, 1);
    if (i2 == 11) {
      n = i2 - 1;
      i = d(n);
      k = 0;
      j = paramInt2 + 1;
      m = paramInt2;
    } else if (i2 == 0) {
      i = d(11);
      n = 11;
      m = paramInt2 - 1;
      k = 1;
      j = paramInt2;
    } else {
      n = i2 - 1;
      i = d(n);
      m = paramInt2;
      k = i2 + 1;
      j = paramInt2;
    } 
    int i3 = gregorianCalendar.get(7) - 1;
    int i1 = i;
    if (gregorianCalendar.isLeapYear(gregorianCalendar.get(1)))
      if (paramInt1 == 2) {
        this.g++;
        i1 = i;
      } else {
        i1 = i;
        if (paramInt1 == 3)
          i1 = i + 1; 
      }  
    this.c.add("D-WHITE-" + String.valueOf(i2) + "-" + paramInt2);
    this.c.add("S-WHITE-" + String.valueOf(i2) + "-" + paramInt2);
    this.c.add("T-WHITE-" + String.valueOf(i2) + "-" + paramInt2);
    this.c.add("Q-WHITE-" + String.valueOf(i2) + "-" + paramInt2);
    this.c.add("Q-WHITE-" + String.valueOf(i2) + "-" + paramInt2);
    this.c.add("S-WHITE-" + String.valueOf(i2) + "-" + paramInt2);
    this.c.add("S-WHITE-" + String.valueOf(i2) + "-" + paramInt2);
    for (paramInt1 = 0; paramInt1 < i3; paramInt1++)
      this.c.add(String.valueOf(i1 - i3 + 1 + paramInt1) + "-GREY-" + c(n) + "-" + m); 
    for (paramInt1 = 1; paramInt1 <= this.g; paramInt1++) {
      String str1;
      String str2;
      if (paramInt1 < 10) {
        str1 = "0" + paramInt1;
      } else {
        str1 = String.valueOf(paramInt1);
      } 
      if (i2 + 1 < 10) {
        str2 = "0" + (i2 + 1);
      } else {
        str2 = String.valueOf(i2 + 1);
      } 
      String str3 = String.format("%s%s%s", new Object[] { Integer.valueOf(paramInt2), str2, str1 });
      if (b(str3)) {
        this.c.add(str1 + "-BLUE-" + str2 + "-" + paramInt2);
      } else if (a(str3)) {
        this.c.add(str1 + "-ATUAL-" + str2 + "-" + paramInt2);
      } else {
        this.c.add(str1 + "-WHITE-" + str2 + "-" + paramInt2);
      } 
    } 
    for (paramInt1 = 0; paramInt1 < this.c.size() % 7; paramInt1++)
      this.c.add(String.valueOf(paramInt1 + 1) + "-GREY-" + c(k) + "-" + j); 
    c();
  }
  
  private boolean a(String paramString) {
    boolean bool = false;
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd");
    try {
      Date date = simpleDateFormat.parse(paramString);
      Calendar calendar = Calendar.getInstance();
      calendar.set(11, 0);
      calendar.set(12, 0);
      calendar.set(13, 0);
      calendar.set(14, 0);
      int i = calendar.getTime().compareTo(date);
      if (i == 0)
        bool = true; 
      return bool;
    } catch (ParseException parseException) {
      Log.e("Error", parseException.toString());
      return false;
    } 
  }
  
  private HashMap<String, Integer> b(int paramInt1, int paramInt2) {
    return new HashMap<String, Integer>();
  }
  
  private boolean b(String paramString) {
    if (AgendamentosActivity.b(this.a) != null)
      for (frb frb : AgendamentosActivity.b(this.a).ai()) {
        if (frb.J() != null && frb.J().equals(paramString))
          return true; 
      }  
    return false;
  }
  
  private String c(int paramInt) {
    return this.e[paramInt];
  }
  
  private void c() {
    Iterator<String> iterator = this.c.iterator();
    while (true) {
      if (iterator.hasNext()) {
        if ("BLUE".equalsIgnoreCase(((String)iterator.next()).split("-")[1])) {
          AgendamentosActivity.a(this.a).setVisibility(8);
          return;
        } 
      } else {
        return;
      } 
      AgendamentosActivity.a(this.a).setVisibility(0);
    } 
  }
  
  private int d(int paramInt) {
    return this.f[paramInt];
  }
  
  private void e(int paramInt) {
    this.h = paramInt;
  }
  
  public int a() {
    return this.h;
  }
  
  public String a(int paramInt) {
    return this.c.get(paramInt);
  }
  
  public int b() {
    return this.i;
  }
  
  public void b(int paramInt) {
    this.i = paramInt;
  }
  
  public int getCount() {
    return this.c.size();
  }
  
  public long getItemId(int paramInt) {
    return paramInt;
  }
  
  @SuppressLint({"NewApi"})
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup) {
    View view = paramView;
    if (paramView == null)
      view = ((LayoutInflater)this.b.getSystemService("layout_inflater")).inflate(2130969477, paramViewGroup, false); 
    this.j = (Button)view.findViewById(2131759477);
    this.j.setOnClickListener(this);
    String[] arrayOfString = ((String)this.c.get(paramInt)).split("-");
    String str1 = arrayOfString[0];
    String str2 = arrayOfString[2];
    String str3 = arrayOfString[3];
    if (!this.l.isEmpty() && this.l != null && this.l.containsKey(str1)) {
      this.k = (TextView)view.findViewById(2131759478);
      Integer integer = this.l.get(str1);
      this.k.setText(integer.toString());
    } 
    this.j.setText(str1);
    this.j.setTag(str3 + str2 + str1);
    if (arrayOfString[1].equals("GREY"))
      this.j.setTextColor(this.a.getResources().getColor(2131624252)); 
    if (arrayOfString[1].equals("WHITE"))
      this.j.setTextColor(this.a.getResources().getColor(2131623937)); 
    if (arrayOfString[1].equals("BLUE")) {
      this.j.setTextColor(this.a.getResources().getColor(2131623972));
      if (Build.VERSION.SDK_INT <= 16) {
        this.j.setBackgroundDrawable(this.a.getResources().getDrawable(2130838152));
      } else {
        this.j.setBackground(this.a.getResources().getDrawable(2130838152));
      } 
    } 
    if (arrayOfString[1].equals("ATUAL")) {
      this.j.setTextColor(this.a.getResources().getColor(2131623972));
      if (Build.VERSION.SDK_INT <= 16) {
        this.j.setBackgroundDrawable(this.a.getResources().getDrawable(2130838153));
        return view;
      } 
    } else {
      return view;
    } 
    this.j.setBackground(this.a.getResources().getDrawable(2130838153));
    return view;
  }
  
  public void onClick(View paramView) {
    String str = (String)paramView.getTag();
    Intent intent = new Intent(this.a.getApplicationContext(), AgendamentosDetalheActivity.class);
    if (AgendamentosActivity.c(this.a).get(str) == null) {
      AgendamentosActivity.a(this.a, null);
      return;
    } 
    ArrayList arrayList = new ArrayList((Collection)AgendamentosActivity.c(this.a).get(str));
    if (arrayList.size() > 0) {
      intent.putExtra("agendamentos", arrayList);
      intent.putExtra("indexConta", AgendamentosActivity.d(this.a));
      this.a.startActivity(intent);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fqq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */