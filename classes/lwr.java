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

public class lwr extends Fragment {
  public static final int a = 500;
  
  public static final int b = 599;
  
  public static final String c = "list-note-key";
  
  public static final String d = "sinister-key";
  
  public static final String e = "sinister-details-key";
  
  private final int f = 15987;
  
  private SinisterDetailActivity g;
  
  private kwv h;
  
  private meu i;
  
  private List<kvs> j;
  
  private RecyclerView k;
  
  private LinearLayout l;
  
  private kwk m;
  
  private int n = -1;
  
  private RelativeLayout o;
  
  private kvp p;
  
  private kvr q;
  
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
    return String.format("%s%s%s.pdf", new Object[] { paramkwk.e(), paramkwk.d().e(), this.p.v() }).replaceAll(" ", "");
  }
  
  private lvx a(kvs paramkvs, int paramInt1, int paramInt2) {
    boolean bool2 = true;
    lvx lvx2 = new lvx();
    String str = paramkvs.g();
    if ((str.equals("002") || str.equals("003")) && paramkvs.c().equals("02") && g()) {
      if (str.equals("002")) {
        bool1 = false;
      } else {
        bool1 = true;
      } 
    } else if ((str.equals("003") && paramkvs.c().equals("03")) || (str.equals("002") && paramkvs.c().equals("02"))) {
      bool1 = false;
    } else {
      bool1 = true;
    } 
    lvx lvx1 = lvx2.a(paramkvs).a(bool1);
    if (paramInt1 > 0) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    lvx1 = lvx1.b(bool1);
    if (paramInt1 != paramInt2) {
      bool1 = bool2;
      lvx1.e(bool1);
      return lvx2;
    } 
    boolean bool1 = false;
    lvx1.e(bool1);
    return lvx2;
  }
  
  public static lwr a(List<kvs> paramList, kvp paramkvp) {
    Bundle bundle = new Bundle();
    if (paramList != null)
      bundle.putString("list-note-key", (new ejm()).b(paramList)); 
    if (paramkvp != null)
      bundle.putString("sinister-key", (new ejm()).b(paramkvp)); 
    lwr lwr1 = new lwr();
    lwr1.setArguments(bundle);
    return lwr1;
  }
  
  public static lwr a(List<kvs> paramList, kvp paramkvp, kvr paramkvr) {
    Bundle bundle = new Bundle();
    if (paramList != null)
      bundle.putString("list-note-key", (new ejm()).b(paramList)); 
    if (paramkvp != null)
      bundle.putString("sinister-key", (new ejm()).b(paramkvp)); 
    if (paramkvr != null)
      bundle.putString("sinister-details-key", (new ejm()).b(paramkvr)); 
    lwr lwr1 = new lwr();
    lwr1.setArguments(bundle);
    return lwr1;
  }
  
  private void a(View paramView) {
    this.k = (RecyclerView)paramView.findViewById(2131757551);
    this.l = (LinearLayout)paramView.findViewById(2131757550);
    this.o = (RelativeLayout)paramView.findViewById(2131757397);
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
      jSONObject2.put("year", this.p.a());
      jSONObject2.put("branch", this.p.b());
      jSONObject2.put("lossNumber", nab.a().b(this.p.c()));
      jSONObject2.put("sequence", this.p.d());
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
  
  private lvr b(kwk paramkwk) {
    boolean bool4 = true;
    boolean bool3 = false;
    lvv lvv = lvv.GONE;
    if (paramkwk.d().a(new String[] { "Z", "R" })) {
      if (paramkwk.e().intValue() > -1) {
        lvv = lvv.VISUALIZAR;
      } else {
        lvv = lvv.GONE;
      } 
      boolean bool6 = true;
      boolean bool5 = bool4;
      lvr lvr1 = new lvr();
      lvr1.a(paramkwk).a(bool6).b(bool5).a(lvv).a((lvu)new lwx(this));
      return lvr1;
    } 
    if (paramkwk.d().a(new String[] { "E" })) {
      boolean bool5;
      lvv = lvv.ENVIAR;
      if (!mzr.a()) {
        bool5 = true;
      } else {
        bool5 = false;
      } 
      boolean bool6 = bool3;
      lvr lvr1 = new lvr();
      lvr1.a(paramkwk).a(bool6).b(bool5).a(lvv).a((lvu)new lwx(this));
      return lvr1;
    } 
    boolean bool1 = bool4;
    boolean bool2 = bool3;
    if (paramkwk.d().a(new String[] { "X" })) {
      lvv lvv1;
      if (paramkwk.e().intValue() > -1) {
        lvv1 = lvv.REENVIAR;
      } else {
        lvv1 = lvv.GONE;
      } 
      lvv = lvv1;
      bool1 = bool4;
      bool2 = bool3;
      if (mzr.a()) {
        bool1 = false;
        lvv = lvv1;
        bool2 = bool3;
      } 
    } 
    lvr lvr = new lvr();
    lvr.a(paramkwk).a(bool2).b(bool1).a(lvv).a((lvu)new lwx(this));
    return lvr;
  }
  
  private void b(kwh paramkwh) {
    boolean bool = true;
    boolean bool1 = a(paramkwh);
    if (b()) {
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
    kwq.a(this.m.e().intValue());
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
      this.h.a(kwq, (kxa)new lwz(this));
      return;
    } catch (Exception exception) {
      exception.printStackTrace();
      return;
    } 
  }
  
  private void c() {
    try {
      if (this.n <= -1)
        return; 
      for (kwk kwk1 : ((kvs)this.j.get(this.n)).a()) {
        try {
          String str = a(kwk1);
          File file = new File(this.g.getExternalCacheDir(), str);
          if (file.exists())
            file.delete(); 
        } catch (Exception exception) {
          exception.printStackTrace();
        } 
      } 
    } catch (Exception exception) {
      exception.printStackTrace();
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
    knv.e(this.p.v());
    knv.f(mzr.g());
    knv.g(mhj.x(this.p.j()));
    knv.d(this.m.g());
    knv.c(this.m.d().e());
    try {
      this.h.a(knv, (kxa)new lxa(this));
      return;
    } catch (Exception exception) {
      exception.printStackTrace();
      return;
    } 
  }
  
  private void d() {
    if (this.j != null) {
      this.l.setVisibility(8);
      if (this.j.isEmpty()) {
        (this.o.getLayoutParams()).height = (int)TypedValue.applyDimension(1, 20.0F, this.g.getResources().getDisplayMetrics());
      } else {
        if (this.j.size() > 1)
          Collections.sort(this.j, (Comparator<? super kvs>)new lws(this)); 
        this.k.setHasFixedSize(true);
        this.k.setLayoutManager((RecyclerView.LayoutManager)new LinearLayoutManager((Context)this.g, 1, false));
        e();
      } 
      if (g()) {
        this.g.a(true);
        return;
      } 
      this.g.a(false);
      return;
    } 
    this.k.setVisibility(8);
    this.l.setVisibility(0);
    this.g.a(false);
  }
  
  private void e() {
    if (this.j != null) {
      int i;
      this.i = new meu<mdt>();
      this.k.setAdapter(this.i);
      if (((kvs)this.j.get(this.j.size() - 1)).a() != null) {
        i = this.j.size() - 2;
      } else {
        i = this.j.size() - 1;
      } 
      for (int j = 0; j < this.j.size(); j++) {
        lvn lvn;
        kvs kvs = this.j.get(j);
        if (kvs.a() != null) {
          boolean bool2;
          this.n = j;
          c();
          kwh kwh = f();
          boolean bool = kwh.a();
          lvj lvj = new lvj();
          lvj.a(kwh).a((lvl)new lwu(this));
          ArrayList<lvj> arrayList = new ArrayList();
          arrayList.add(lvj);
          int k = 0;
          boolean bool1;
          for (bool1 = true; k < kvs.a().size(); bool1 = bool3) {
            kwk kwk1 = kvs.a().get(k);
            boolean bool3 = bool1;
            if (!kwk1.d().d()) {
              lvr lvr = b(kwk1);
              if (!lvr.g())
                bool1 = false; 
              arrayList.add(lvr);
              bool3 = bool1;
            } 
            k++;
          } 
          lvf lvf = new lvf();
          if (!mzr.a()) {
            bool2 = true;
          } else {
            bool2 = false;
          } 
          lvf.a(bool2).a((lvh)new lwv(this));
          arrayList.add(lvf);
          lvn lvn1 = new lvn();
          lvn = lvn1.a(true).a(kvs);
          if (bool && bool1) {
            bool2 = true;
          } else {
            bool2 = false;
          } 
          lvn.b(bool2).d(false).e(false).c(true).a((lvq)new lww(this));
          if (!bool || !bool1) {
            this.g.a(false, kvx.DOCUMENTATION);
          } else {
            this.g.a(this.g.b(), kvx.DOCUMENTATION);
          } 
          lvn1.b(arrayList);
          this.i.d(lvn1);
        } else {
          lvx lvx = a((kvs)lvn, j, i);
          this.i.d(lvx);
        } 
      } 
    } 
  }
  
  private kwh f() {
    String str2;
    String str3;
    if (mhg.a().b("bank-item-key") && !TextUtils.isEmpty(mhg.a().a("bank-item-key")))
      return (kwh)(new ejm()).a(mhg.a().a("bank-item-key"), kwh.class); 
    if (!TextUtils.isEmpty(this.q.y())) {
      str2 = this.q.y();
    } else {
      str2 = "";
    } 
    if (!TextUtils.isEmpty(this.q.z())) {
      str3 = mhj.a(this.q.z(), '0', 4);
    } else {
      str3 = "";
    } 
    if (!TextUtils.isEmpty(this.q.A())) {
      str1 = this.q.A();
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
  
  private boolean g() {
    Iterator<kvs> iterator = this.j.iterator();
    boolean bool = false;
    while (iterator.hasNext()) {
      kvs kvs = iterator.next();
      if (kvs.c().equals("02")) {
        String str;
        if (TextUtils.isEmpty(kvs.d())) {
          str = "";
        } else {
          str = str.d().substring(0, 3);
        } 
        if (str.equals("002") || str.equals("003")) {
          bool = true;
          continue;
        } 
        if (str.equals("005"))
          return false; 
      } 
    } 
    return bool;
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
    if (this.m == null)
      return; 
    if (Build.VERSION.SDK_INT >= 23 && ContextCompat.checkSelfPermission((Context)this.g, "android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
      requestPermissions(new String[] { "android.permission.WRITE_EXTERNAL_STORAGE" }, 15987);
      return;
    } 
    String str = a(this.m);
    File file = new File(this.g.getExternalCacheDir(), str);
    if (file.exists()) {
      mhj.a((grs)this.g, file);
      return;
    } 
    j();
  }
  
  private void j() {
    this.g.b.setState(aor.LOADING);
    this.h.a(String.valueOf(this.m.e()), (kxa)new lxb(this));
  }
  
  private gkw<is> k() {
    return (gkw<is>)new lwt(this);
  }
  
  public void a() {
    lxn lxn = lxn.a();
    lxn.a((lxq)new lwy(this));
    lxn.show(this.g.getFragmentManager(), "add-document");
  }
  
  public void a(kwh paramkwh, int paramInt) {
    Intent intent = new Intent((Context)this.g, ConfirmationPaymentActivity.class);
    kve kve = new kve();
    kve.a(false);
    kve.b(this.p.a());
    kve.c(this.p.b());
    kve.d(this.p.c());
    kve.e(this.p.d());
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
      intent.putExtra("last-certificate-key", this.q.c());
    } 
    intent.putExtra("sinister-code", (new ejm()).b(kve));
    startActivity(intent);
  }
  
  public void a(kwk paramkwk, int paramInt) {
    this.m = paramkwk;
    if (paramkwk.a()) {
      if (this.m.d().a(new String[] { "X" }));
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
        this.g.a(a(this.j, this.p, this.q), "sinister-details", true);
      } 
      return;
    } catch (Exception exception) {
      exception.printStackTrace();
      return;
    } 
  }
  
  @nfq
  public void a(kxf paramkxf) {
    if (this.m.a()) {
      if (this.m.d().a(new String[] { "E" })) {
        c(paramkxf);
        return;
      } 
    } else {
      return;
    } 
    b(paramkxf);
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
  
  public boolean b() {
    return (!TextUtils.isEmpty(this.p.o()) && this.p.o().equals("05"));
  }
  
  public void onAttach(Context paramContext) {
    super.onAttach(paramContext);
    if (paramContext instanceof SinisterDetailActivity)
      this.g = (SinisterDetailActivity)paramContext; 
  }
  
  public void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
    if (getArguments() != null && getArguments().containsKey("list-note-key"))
      this.j = new ArrayList<kvs>(Arrays.asList((Object[])(new ejm()).a(getArguments().getString("list-note-key"), kvs[].class))); 
    if (getArguments() != null && getArguments().containsKey("sinister-key"))
      this.p = (kvp)(new ejm()).a(getArguments().getString("sinister-key"), kvp.class); 
    if (getArguments() != null && getArguments().containsKey("sinister-details-key"))
      this.q = (kvr)(new ejm()).a(getArguments().getString("sinister-details-key"), kvr.class); 
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


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\lwr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */