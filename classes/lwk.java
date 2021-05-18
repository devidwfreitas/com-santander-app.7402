import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.ActivityCompat;
import android.support.v4.app.Fragment;
import android.support.v4.content.ContextCompat;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.util.Log;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.santander.app.seguros.ui.sinister.activities.ConfirmationPaymentActivity;
import com.santander.app.seguros.ui.sinister.activities.ScanDocumentActivity;
import com.santander.app.seguros.ui.sinister.activities.SinisterDetailActivity;
import com.santander.app.seguros.ui.sinister.activities.SurveyActivity;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class lwk extends Fragment implements lus {
  public static final int a = 500;
  
  public static final int b = 599;
  
  public static final String c = "list-note-key";
  
  public static final String d = "sinister-key";
  
  public static final String e = "sinister-details-key";
  
  private final int f = 15987;
  
  private SinisterDetailActivity g;
  
  private kwv h;
  
  private luh i;
  
  private int j = -1;
  
  private List<kvs> k;
  
  private RecyclerView l;
  
  private LinearLayout m;
  
  private kwk n;
  
  private int o = -1;
  
  private RelativeLayout p;
  
  private kvp q;
  
  private kvr r;
  
  private boolean s;
  
  private String a(int paramInt1, int paramInt2, List<kwk> paramList) {
    ArrayList<Integer> arrayList;
    try {
      arrayList = new ArrayList();
      for (kwk kwk1 : paramList) {
        if (kwk1.d() != null && !TextUtils.isEmpty(kwk1.d().e())) {
          Integer integer = Integer.valueOf(kwk1.d().e());
          if (integer != null && integer.intValue() >= paramInt1 && integer.intValue() <= paramInt2)
            arrayList.add(integer); 
        } 
      } 
    } catch (Exception exception) {
      exception.printStackTrace();
      return null;
    } 
    int i = paramInt1;
    if (arrayList.isEmpty())
      return mhj.a(String.valueOf(paramInt1), '0', 3); 
    while (true) {
      if (i <= paramInt2) {
        if (!arrayList.contains(Integer.valueOf(i)))
          return mhj.a(String.valueOf(i), '0', 3); 
      } else {
        return "";
      } 
      i++;
    } 
  }
  
  private String a(kwk paramkwk) {
    return String.format("%s%s%s.pdf", new Object[] { paramkwk.e(), paramkwk.d().e(), this.q.v() }).replaceAll(" ", "");
  }
  
  public static lwk a(List<kvs> paramList, kvp paramkvp) {
    Bundle bundle = new Bundle();
    if (paramList != null)
      bundle.putString("list-note-key", (new ejm()).b(paramList)); 
    if (paramkvp != null)
      bundle.putString("sinister-key", (new ejm()).b(paramkvp)); 
    lwk lwk1 = new lwk();
    lwk1.setArguments(bundle);
    return lwk1;
  }
  
  public static lwk a(List<kvs> paramList, kvp paramkvp, kvr paramkvr) {
    Bundle bundle = new Bundle();
    if (paramList != null)
      bundle.putString("list-note-key", (new ejm()).b(paramList)); 
    if (paramkvp != null)
      bundle.putString("sinister-key", (new ejm()).b(paramkvp)); 
    if (paramkvr != null)
      bundle.putString("sinister-details-key", (new ejm()).b(paramkvr)); 
    lwk lwk1 = new lwk();
    lwk1.setArguments(bundle);
    return lwk1;
  }
  
  private void a(View paramView) {
    this.l = (RecyclerView)paramView.findViewById(2131757551);
    this.m = (LinearLayout)paramView.findViewById(2131757550);
    this.p = (RelativeLayout)paramView.findViewById(2131757397);
  }
  
  private void a(String paramString) {
    JSONObject jSONObject1 = new JSONObject();
    try {
      jSONObject1.put("X-Application-Key", mzx.a().c().get("appKey"));
      jSONObject1.put("Content-Type", "application/json");
    } catch (Exception exception) {
      exception.printStackTrace();
    } 
    JSONObject jSONObject2 = new JSONObject();
    try {
      jSONObject2.put("year", this.q.a());
      jSONObject2.put("branch", this.q.b());
      jSONObject2.put("lossNumber", nab.a().b(this.q.c()));
      jSONObject2.put("sequence", this.q.d());
      jSONObject2.put("documentCode", paramString);
    } catch (JSONException jSONException) {
      jSONException.printStackTrace();
    } 
    ir ir = gnp.a().a(kwr.UPDATE_DOCUMENT_STATUS.getEndpoint(), im.POST, jSONObject1, jSONObject2, true);
    gnv gnv = new gnv(k(), ir);
    if (gnp.a().b() != null)
      try {
        gnp.a().b().a(ir, (ih)gnv);
        return;
      } catch (Exception exception) {
        Log.e("ERROR_SERV", exception.getMessage());
        return;
      }  
  }
  
  private void b(kwh paramkwh) {
    boolean bool = true;
    boolean bool1 = a(paramkwh);
    if (a()) {
      paramkwh.c(true);
      paramkwh.b(true);
      paramkwh.a(true);
    } else if (bool1) {
      paramkwh.c(true);
      paramkwh.b(false);
      paramkwh.a(false);
      paramkwh.a(kwi.SEND);
    } else {
      paramkwh.c(false);
      paramkwh.b(false);
      paramkwh.a(kwi.EDIT);
    } 
    if (mzr.a())
      bool = false; 
    paramkwh.d(bool);
  }
  
  private void b(kxf paramkxf) {
    this.g.b.setState(aor.LOADING);
    if (paramkxf.a == null || paramkxf.b != null);
    String str1 = mhj.a(paramkxf.a);
    String str2 = mhj.a(paramkxf.b);
    kwq kwq = new kwq();
    kwq.a(this.n.e().intValue());
    kwq.a(str1);
    kwq.a(paramkxf.c);
    if (!TextUtils.isEmpty(str1)) {
      kwq.a(paramkxf.c);
      kwq.a(str1);
    } 
    if (!TextUtils.isEmpty(str2))
      if (TextUtils.isEmpty(str1)) {
        kwq.a(paramkxf.d);
        kwq.a(str2);
      } else {
        kwq.b(paramkxf.d);
        kwq.b(str2);
      }  
    try {
      this.h.a(kwq, (kxa)new lwn(this));
      return;
    } catch (Exception exception) {
      exception.printStackTrace();
      return;
    } 
  }
  
  private boolean b() {
    return (this.o <= -1 || this.k == null || this.o > this.k.size() - 1 || ((kvs)this.k.get(this.o)).a() == null);
  }
  
  private void c() {
    if (!b()) {
      Iterator<kwk> iterator = ((kvs)this.k.get(this.o)).a().iterator();
      while (true) {
        if (iterator.hasNext()) {
          kwk kwk1 = iterator.next();
          try {
            String str = a(kwk1);
            File file = new File(this.g.getExternalCacheDir(), str);
            if (file.exists())
              file.delete(); 
          } catch (Exception exception) {
            exception.printStackTrace();
          } 
          continue;
        } 
        return;
      } 
    } 
  }
  
  private void c(kxf paramkxf) {
    this.g.b.setState(aor.LOADING);
    String str1 = mhj.a(paramkxf.a);
    String str2 = mhj.a(paramkxf.b);
    knv knv = new knv();
    if (!TextUtils.isEmpty(str1)) {
      knv.b(paramkxf.c);
      knv.b(str1);
    } 
    if (!TextUtils.isEmpty(str2))
      if (TextUtils.isEmpty(str1)) {
        knv.b(paramkxf.d);
        knv.b(str2);
      } else {
        knv.a(paramkxf.d);
        knv.a(str2);
      }  
    knv.e(this.q.v());
    knv.f(mzr.g());
    knv.g(mhj.x(this.q.j()));
    knv.d(this.n.g());
    knv.c(this.n.d().e());
    try {
      this.h.a(knv, (kxa)new lwo(this));
      return;
    } catch (Exception exception) {
      exception.printStackTrace();
      return;
    } 
  }
  
  private void d() {
    if (this.k != null) {
      this.m.setVisibility(8);
      if (this.k.isEmpty()) {
        (this.p.getLayoutParams()).height = (int)TypedValue.applyDimension(1, 20.0F, this.g.getResources().getDisplayMetrics());
      } else {
        if (this.k.size() > 1)
          Collections.sort(this.k, (Comparator<? super kvs>)new lwl(this)); 
        f();
        c();
        this.l.setHasFixedSize(true);
        this.l.setLayoutManager((RecyclerView.LayoutManager)new LinearLayoutManager((Context)this.g, 1, false));
        this.l.setNestedScrollingEnabled(false);
        if (this.o > -1 && this.r != null) {
          this.i = new luh(this.k, e(), this.g);
        } else {
          this.i = new luh(this.k, this.g);
        } 
        this.i.a(this);
        this.l.setAdapter((RecyclerView.Adapter)this.i);
      } 
      if (g()) {
        this.g.a(true);
        return;
      } 
      this.g.a(false);
      return;
    } 
    this.l.setVisibility(8);
    this.m.setVisibility(0);
    this.g.a(false);
  }
  
  private kwh e() {
    String str2;
    String str3;
    if (mhg.a().b("bank-item-key") && !TextUtils.isEmpty(mhg.a().a("bank-item-key")))
      return (kwh)(new ejm()).a(mhg.a().a("bank-item-key"), kwh.class); 
    if (!TextUtils.isEmpty(this.r.y())) {
      str2 = this.r.y();
    } else {
      str2 = "";
    } 
    if (!TextUtils.isEmpty(this.r.z())) {
      str3 = mhj.a(this.r.z(), '0', 4);
    } else {
      str3 = "";
    } 
    if (!TextUtils.isEmpty(this.r.A())) {
      str1 = this.r.A();
    } else {
      str1 = "";
    } 
    if (str1.length() > 1) {
      String str5 = str1.substring(str1.length() - 1);
      String str6 = str1.substring(0, str1.length() - 1);
      str1 = str5;
      str5 = str6;
      kwh kwh1 = new kwh();
      kwh1.a(str2);
      kwh1.b(str3);
      kwh1.c(str5);
      kwh1.d(str1);
      b(kwh1);
      return kwh1;
    } 
    String str4 = str1;
    String str1 = "";
    kwh kwh = new kwh();
    kwh.a(str2);
    kwh.b(str3);
    kwh.c(str4);
    kwh.d(str1);
    b(kwh);
    return kwh;
  }
  
  private void f() {
    if (this.k != null) {
      int i = 0;
      while (true) {
        if (i < this.k.size()) {
          if (((kvs)this.k.get(i)).a() != null) {
            this.o = i;
            return;
          } 
          i++;
          continue;
        } 
        return;
      } 
    } 
  }
  
  private boolean g() {
    for (kvs kvs : this.k) {
      String str;
      if (TextUtils.isEmpty(kvs.d())) {
        str = "";
      } else {
        str = kvs.d().substring(0, 3);
      } 
      if ((str.equals("002") || str.equals("003")) && kvs.c().equals("02"))
        return true; 
    } 
    return false;
  }
  
  private void h() {
    if (Build.VERSION.SDK_INT >= 23 && ContextCompat.checkSelfPermission((Context)this.g, "android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
      ActivityCompat.requestPermissions((Activity)this.g, new String[] { "android.permission.WRITE_EXTERNAL_STORAGE" }, 15987);
      return;
    } 
    try {
      File file = new File(this.g.getExternalCacheDir(), "DOCUMENTO_EM_PDF.pdf");
      byte[] arrayOfByte = mhj.b((Context)this.g, "pdf/teste.pdf");
      FileOutputStream fileOutputStream = new FileOutputStream(file, false);
      fileOutputStream.write(arrayOfByte);
      fileOutputStream.flush();
      fileOutputStream.close();
      Intent intent = new Intent("android.intent.action.VIEW");
      intent.setDataAndType(Uri.fromFile(file), "application/pdf");
      intent.setFlags(1073741824);
      startActivity(intent);
      return;
    } catch (Exception exception) {
      exception.printStackTrace();
      return;
    } 
  }
  
  private void i() {
    if (this.n == null)
      return; 
    if (Build.VERSION.SDK_INT >= 23 && ContextCompat.checkSelfPermission((Context)this.g, "android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
      requestPermissions(new String[] { "android.permission.WRITE_EXTERNAL_STORAGE" }, 15987);
      return;
    } 
    String str = a(this.n);
    File file = new File(this.g.getExternalCacheDir(), str);
    if (file.exists()) {
      mhj.a((grs)this.g, file);
      return;
    } 
    j();
  }
  
  private void j() {
    this.g.b.setState(aor.LOADING);
    this.h.a(String.valueOf(this.n.e()), (kxa)new lwp(this));
  }
  
  private gkw<is> k() {
    return (gkw<is>)new lwq(this);
  }
  
  public void a(int paramInt, float paramFloat) {}
  
  public void a(kvs paramkvs) {
    Intent intent = new Intent((Context)this.g, SurveyActivity.class);
    intent.putExtra("sinister-key", (new ejm()).b(this.q));
    startActivity(intent);
  }
  
  public void a(kvs paramkvs, int paramInt) {
    lxn lxn = lxn.a();
    lxn.a((lxq)new lwm(this, paramkvs));
    lxn.show(this.g.getFragmentManager(), "add-document");
  }
  
  public void a(kvs paramkvs, kwh paramkwh, int paramInt) {
    Intent intent = new Intent((Context)this.g, ConfirmationPaymentActivity.class);
    kve kve = new kve();
    kve.a(false);
    kve.b(this.q.a());
    kve.c(this.q.b());
    kve.d(this.q.c());
    kve.e(this.q.d());
    if (paramkwh.b() == kwi.EDIT) {
      kum kum = new kum();
      kum.g(paramkwh.e());
      kum.h(paramkwh.f() + paramkwh.g());
      kum.a(paramkwh.g());
      mge.INSTANCE.setBankData(kum);
      if (!mhg.a().b("bank-item-key")) {
        intent.putExtra("bank-id", paramkwh.d());
      } else {
        mge.INSTANCE.setCodeNameBank(paramkwh.d());
      } 
    } else if (paramkwh.b() == kwi.SEND) {
      intent.putExtra("last-certificate-key", this.r.c());
    } 
    intent.putExtra("sinister-code", (new ejm()).b(kve));
    startActivity(intent);
  }
  
  public void a(kwk paramkwk, int paramInt) {
    this.n = paramkwk;
    this.j = paramInt;
    if (paramkwk.a()) {
      if (this.n.d().a(new String[] { "X" }));
      startActivity(new Intent((Context)this.g, ScanDocumentActivity.class));
      return;
    } 
    if (paramkwk.b()) {
      i();
      return;
    } 
  }
  
  @nfq
  public void a(kxb paramkxb) {
    try {
      if (paramkxb.a && mge.INSTANCE.getBankData() != null) {
        String str = mge.INSTANCE.getBankData().h().substring(0, mge.INSTANCE.getBankData().h().length() - mge.INSTANCE.getBankData().a().length());
        kum kum = mge.INSTANCE.getBankData();
        kwh kwh = new kwh();
        kwh.a(mge.INSTANCE.getCodeNameBank());
        kwh.b(mhj.a(kum.g(), '0', 4));
        kwh.c(str);
        kwh.d(kum.a());
        b(kwh);
        mge.INSTANCE.setBankData(null);
        mge.INSTANCE.setCodeNameBank("");
        mhg.a().a("bank-item-key", (new ejm()).b(kwh));
        if (this.i != null && this.o > -1)
          this.i.a(kwh, this.o); 
      } 
      return;
    } catch (Exception exception) {
      exception.printStackTrace();
      return;
    } 
  }
  
  @nfq
  public void a(kxf paramkxf) {
    if (this.n.a())
      if (this.n.d().a(new String[] { "E" })) {
        c(paramkxf);
      } else {
        b(paramkxf);
      }  
    this.s = false;
  }
  
  public boolean a() {
    return (!TextUtils.isEmpty(this.q.o()) && this.q.o().equals("05"));
  }
  
  public boolean a(kwh paramkwh) {
    String str1;
    String str2;
    if (!TextUtils.isEmpty(paramkwh.e())) {
      str2 = paramkwh.e();
    } else {
      str2 = "";
    } 
    if (!TextUtils.isEmpty(paramkwh.f())) {
      str1 = paramkwh.f();
    } else {
      str1 = "";
    } 
    return (TextUtils.isEmpty(str2.replace(" ", "")) || TextUtils.isEmpty(str1.replace(" ", "")));
  }
  
  public void onAttach(Context paramContext) {
    super.onAttach(paramContext);
    if (paramContext instanceof SinisterDetailActivity)
      this.g = (SinisterDetailActivity)paramContext; 
  }
  
  public void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
    if (getArguments() != null && getArguments().containsKey("list-note-key"))
      this.k = new ArrayList<kvs>(Arrays.asList((Object[])(new ejm()).a(getArguments().getString("list-note-key"), kvs[].class))); 
    if (getArguments() != null && getArguments().containsKey("sinister-key"))
      this.q = (kvp)(new ejm()).a(getArguments().getString("sinister-key"), kvp.class); 
    if (getArguments() != null && getArguments().containsKey("sinister-details-key"))
      this.r = (kvr)(new ejm()).a(getArguments().getString("sinister-details-key"), kvr.class); 
    this.h = new kwv(null);
  }
  
  @Nullable
  public View onCreateView(LayoutInflater paramLayoutInflater, @Nullable ViewGroup paramViewGroup, @Nullable Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(2130969087, paramViewGroup, false);
    a(view);
    d();
    return view;
  }
  
  public void onDestroy() {
    super.onDestroy();
    c();
  }
  
  public void onPause() {
    super.onPause();
    kws.a().b().c(this);
  }
  
  public void onRequestPermissionsResult(int paramInt, @NonNull String[] paramArrayOfString, @NonNull int[] paramArrayOfint) {
    super.onRequestPermissionsResult(paramInt, paramArrayOfString, paramArrayOfint);
    switch (paramInt) {
      default:
        return;
      case 15987:
        break;
    } 
    if (paramArrayOfint.length >= 1 && paramArrayOfint[0] == 0) {
      i();
      return;
    } 
    mhj.c((Context)this.g, getResources().getString(2131297378));
  }
  
  public void onResume() {
    super.onResume();
    kws.a().b().b(this);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\lwk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */