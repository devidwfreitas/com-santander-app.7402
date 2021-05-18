package com.santander.app.seguros.ui.sinister.activities;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.v4.content.ContextCompat;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.TextView;
import aor;
import br.com.zup.multistatelayout.MultiStateLayout;
import ejm;
import gkw;
import gnp;
import gnv;
import gpu;
import grs;
import ih;
import im;
import ir;
import is;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import knv;
import knw;
import koc;
import kur;
import kus;
import kut;
import kuw;
import kve;
import kwo;
import kwq;
import kwr;
import kws;
import kwv;
import kxa;
import kxb;
import kxf;
import lsi;
import lsj;
import lsk;
import lsl;
import lsm;
import lsn;
import lso;
import lsp;
import lsq;
import lsr;
import lss;
import ltm;
import ltt;
import lxn;
import lxq;
import lyf;
import lyh;
import mge;
import mhg;
import mhj;
import mys;
import mzr;
import mzx;
import nab;
import nfq;
import org.json.JSONException;
import org.json.JSONObject;

public class SinisterDocumentsActivity extends grs implements lxq {
  public static final String a = "sinister-code";
  
  public static final String b = "coverage-key";
  
  public static final String c = "certificate-key";
  
  public static final String d = "phone-assistance";
  
  private static final int e = 54976;
  
  private lyf A;
  
  private ltm B;
  
  private lyh C;
  
  private int D = -1;
  
  private kwo E;
  
  private kve F;
  
  private String G;
  
  private List<kuw> H;
  
  private String I;
  
  private kwv J;
  
  private lxn K;
  
  private boolean L = false;
  
  private String M = "documents";
  
  private List<Integer> N = new ArrayList<Integer>();
  
  private String O;
  
  private MultiStateLayout f;
  
  private RecyclerView g;
  
  private Button w;
  
  private Button x;
  
  private FrameLayout y;
  
  private TextView z;
  
  private void a(List<kuw> paramList) {
    HashMap<Object, Object> hashMap;
    if (paramList != null && paramList.size() > 0) {
      try {
        String str = mhj.a((Context)this, "jsons/sinister/document_info.json");
        hashMap = new HashMap<Object, Object>();
        JSONObject jSONObject = new JSONObject(str);
        Iterator<String> iterator = jSONObject.keys();
        while (iterator.hasNext()) {
          String str1 = iterator.next();
          hashMap.put(str1, (new ejm()).a(jSONObject.getString(str1), koc.class));
        } 
      } catch (Exception exception) {
        exception.printStackTrace();
        return;
      } 
    } else {
      return;
    } 
    a((List<kuw>)exception, (HashMap)hashMap);
    b((List<kuw>)exception);
  }
  
  private void a(List<kuw> paramList, HashMap<String, koc> paramHashMap) {
    for (kuw kuw : paramList) {
      String str;
      boolean bool;
      if (paramHashMap.containsKey(kuw.e())) {
        str = ((koc)paramHashMap.get(kuw.e())).a();
      } else {
        str = kuw.f();
      } 
      kuw.a(str);
      if (paramHashMap.containsKey(kuw.e())) {
        str = ((koc)paramHashMap.get(kuw.e())).b();
      } else {
        str = kuw.f();
      } 
      kuw.b(str);
      if (paramHashMap.containsKey(kuw.e()) && ((koc)paramHashMap.get(kuw.e())).c()) {
        bool = true;
      } else {
        bool = false;
      } 
      kuw.a(bool);
    } 
  }
  
  private File b(kus paramkus) {
    return new File(c() + File.separator + this.M + File.separator + String.valueOf(paramkus.a()) + ".pdf");
  }
  
  private void b(String paramString) {
    JSONObject jSONObject1 = new JSONObject();
    try {
      jSONObject1.put("X-Application-Key", mzx.a().c().get("appKey"));
      jSONObject1.put("Content-Type", "application/json");
    } catch (Exception exception) {
      exception.printStackTrace();
    } 
    JSONObject jSONObject2 = new JSONObject();
    try {
      jSONObject2.put("year", this.F.c());
      jSONObject2.put("branch", this.F.d());
      jSONObject2.put("lossNumber", nab.a().b(this.F.e()));
      jSONObject2.put("sequence", this.F.f());
      jSONObject2.put("documentCode", paramString);
    } catch (JSONException jSONException) {
      jSONException.printStackTrace();
    } 
    ir ir = gnp.a().a(kwr.UPDATE_DOCUMENT_STATUS.getEndpoint(), im.POST, jSONObject1, jSONObject2, true);
    gnv gnv = new gnv(q(), ir);
    if (gnp.a().b() != null)
      try {
        gnp.a().b().a(ir, (ih)gnv);
        return;
      } catch (Exception exception) {
        Log.e("ERROR_SERV", exception.getMessage());
        return;
      }  
  }
  
  private void b(List<kuw> paramList) {
    this.H.clear();
    this.H.addAll(c(paramList));
    this.B = new ltm(kut.a(paramList));
    LinearLayoutManager linearLayoutManager = new LinearLayoutManager((Context)this, 1, false);
    this.g.setLayoutManager((RecyclerView.LayoutManager)linearLayoutManager);
    this.g.setAdapter((RecyclerView.Adapter)this.B);
    this.B.a((ltt)new lsp(this));
  }
  
  private File c() {
    return getExternalCacheDir();
  }
  
  private Collection<? extends kuw> c(List<kuw> paramList) {
    ArrayList<kuw> arrayList = new ArrayList();
    for (kuw kuw : paramList) {
      if (!kuw.d())
        arrayList.add(kuw); 
    } 
    return arrayList;
  }
  
  private void c(kus paramkus) {
    if (paramkus == null || paramkus.a() <= -1) {
      mhj.c((Context)this.i, getResources().getString(2131297122));
      return;
    } 
    this.B.a(this.D);
    kur kur = new kur();
    kur.a(String.valueOf(paramkus.a()));
    try {
      this.J.a(kur, (kxa)new lsq(this));
      return;
    } catch (Exception exception) {
      exception.printStackTrace();
      return;
    } 
  }
  
  private void d(kus paramkus) {
    this.B.a(this.D);
    kwq kwq = new kwq();
    kwq.a(paramkus.a());
    kwq.a("iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR4nGP6zwAAAgcBApocMXEAAAAASUVORK5CYII=");
    kwq.a(knw.PNG);
    try {
      this.J.a(kwq, (kxa)new lsr(this));
      return;
    } catch (Exception exception) {
      exception.printStackTrace();
      return;
    } 
  }
  
  private boolean d() {
    if (Build.VERSION.SDK_INT >= 23 && ContextCompat.checkSelfPermission((Context)this, "android.permission.WRITE_EXTERNAL_STORAGE") != 0)
      return false; 
    File file = new File(c() + File.separator + this.M);
    return !file.exists() ? file.mkdirs() : true;
  }
  
  private void e() {
    File file = new File(c() + File.separator + this.M);
    if (file.exists()) {
      if (file.isDirectory()) {
        String[] arrayOfString = file.list();
        for (int i = 0; i < arrayOfString.length; i++)
          (new File(file, arrayOfString[i])).delete(); 
      } 
      file.delete();
    } 
  }
  
  private void e(kus paramkus) {
    if (paramkus == null)
      return; 
    try {
      if (Build.VERSION.SDK_INT >= 23 && ContextCompat.checkSelfPermission((Context)this, "android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
        requestPermissions(new String[] { "android.permission.WRITE_EXTERNAL_STORAGE" }, 54976);
        return;
      } 
    } catch (Exception exception) {
      exception.printStackTrace();
      mhj.c((Context)this, getResources().getString(2131297122));
      return;
    } 
    if (exception.a() > -1 && d()) {
      File file = b((kus)exception);
      if (file.exists()) {
        mhj.a(this, file);
        return;
      } 
      f((kus)exception);
      return;
    } 
    mhj.c((Context)this, getResources().getString(2131297122));
  }
  
  private void f() {
    a(Arrays.asList((kuw[])mys.a().a("[\n  {\n    \"documentCode\": \"001\",\n    \"documentDescription\": \"AVISO DE SINISTRO RESIDENCIAL (FORMULÁRIO ANEXO)\",\n    \"statusDocument\": \"E\",\n    \"statusDocumentDescription\": \"Pendente\",\n    \"dateStatus\": \"27/04/2017\",\n    \"refusalCode\": \"\",\n    \"refusalDescription\": \"\"\n  },\n  {\n    \"documentCode\": \"002\",\n    \"documentDescription\": \"BOLETIM DE OCORRÊNCIA POLICIAL\",\n    \"statusDocument\": \"E\",\n    \"statusDocumentDescription\": \"Pendente\",\n    \"dateStatus\": \"27/04/2017\",\n    \"refusalCode\": \"\",\n    \"refusalDescription\": \"\"\n  },\n  {\n    \"documentCode\": \"007\",\n    \"documentDescription\": \"NO MINIMO 2 (DOIS) ORÇAMENTOS  DISCRIMINATIVOS DE MATERIAL E MÃO - DE - OBRA PARA REPAROS DOS BENS SINISTRADOS, SENDO QUE DEVERÃO SER EM PAPEL TIMBRADO DA EMPRESA FORNECEDORA.\",\n    \"statusDocument\": \"E\",\n    \"statusDocumentDescription\": \"Pendente\",\n    \"dateStatus\": \"27/04/2017\",\n    \"refusalCode\": \"\",\n    \"refusalDescription\": \"\"\n  },\n  {\n    \"documentCode\": \"056\",\n    \"documentDescription\": \"AUTORIZAÇÃO PARA PAGAMENTO ATRAVES DE CRÉDITO EM CONTA CORRENTE( SEGUE FORMULÁRIO ANEXO)\",\n    \"statusDocument\": \"E\",\n    \"statusDocumentDescription\": \"Pendente\",\n    \"dateStatus\": \"27/04/2017\",\n    \"refusalCode\": \"\",\n    \"refusalDescription\": \"\"\n  },\n  {\n    \"documentCode\": \"046\",\n    \"documentDescription\": \"DECLARAÇÃO DA INEXISTÊNCIA DE OUTROS SEGUROS\",\n    \"statusDocument\": \"E\",\n    \"statusDocumentDescription\": \"Pendente\",\n    \"dateStatus\": \"27/04/2017\",\n    \"refusalCode\": \"\",\n    \"refusalDescription\": \"\"\n  },\n  {\n    \"documentCode\": \"054\",\n    \"documentDescription\": \"COMPROVANTE DE ENDEREÇO DA RESIDENCIA SEGURADA\",\n    \"statusDocument\": \"E\",\n    \"statusDocumentDescription\": \"Pendente\",\n    \"dateStatus\": \"27/04/2017\",\n    \"refusalCode\": \"\",\n    \"refusalDescription\": \"\"\n  },\n  {\n    \"documentCode\": \"055\",\n    \"documentDescription\": \"CPF E RG DO SEGURADO\",\n    \"statusDocument\": \"E\",\n    \"statusDocumentDescription\": \"Pendente\",\n    \"dateStatus\": \"27/04/2017\",\n    \"refusalCode\": \"\",\n    \"refusalDescription\": \"\"\n  },\n  {\n    \"documentCode\": \"025\",\n    \"documentDescription\": \"COMPROVANTES DE PRE-EXISTENCIA ORIGINAIS (NOTAS FISCAIS ORIGINAIS, EM NOME DO SEGURADO OU SEUS DEPENDENTES QUE COMPROVEM A PREEXISTÊNCIA DOS BENS)\",\n    \"statusDocument\": \"E\",\n    \"statusDocumentDescription\": \"Pendente\",\n    \"dateStatus\": \"27/04/2017\",\n    \"refusalCode\": \"\",\n    \"refusalDescription\": \"\"\n  }\n]", kuw[].class)));
  }
  
  private void f(kus paramkus) {
    this.f.setState(aor.LOADING);
    this.J.a(String.valueOf(paramkus.a()), (kxa)new lss(this, paramkus));
  }
  
  private void g() {
    if (mhg.a().b("audio-base64-key")) {
      String str = mhg.a().a("audio-base64-key");
      if (!TextUtils.isEmpty(str)) {
        knv knv = new knv();
        knv.e(this.F.i());
        knv.f(mzr.g());
        knv.g(this.G);
        knv.d("Audio");
        knv.c(knw.AUDIO.toString());
        knv.b(knw.AUDIO);
        knv.b(str);
        try {
          this.J.a(knv, (kxa)new lsi(this));
          return;
        } catch (Exception exception) {
          exception.printStackTrace();
          return;
        } 
      } 
      Log.e("Audio", "NULL");
      return;
    } 
    Log.e("Audio", "NULL");
  }
  
  private void h() {
    this.f.setState(aor.LOADING);
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    hashMap.put("year", this.F.c());
    hashMap.put("branch", this.F.d());
    hashMap.put("lossNumber", Uri.encode(nab.a().b(this.F.e())));
    hashMap.put("sequence", this.F.f());
    String str = gnp.a(hashMap);
    str = kwr.LIST_DOCUMENTS.getEndpoint() + "?" + str;
    ir ir = gnp.a().a(str, im.GET, null, new JSONObject(), true);
    gnv gnv = new gnv(p(), ir);
    if (gnp.a().b() != null)
      try {
        gnp.a().b().a(ir, (ih)gnv);
        return;
      } catch (Exception exception) {
        Log.e("ERROR_SERV", exception.getMessage());
        exception.printStackTrace();
        this.f.setState(aor.ERROR);
        ((TextView)this.f.findViewById(2131757215)).setText(getResources().getString(2131297122));
        return;
      }  
  }
  
  private void i() {
    this.A = lyf.a();
    this.A.show(getFragmentManager(), "dialog-fragment");
  }
  
  private void j() {
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setBackgroundDrawable(getResources().getDrawable(2130839140));
    actionBar.setDisplayShowCustomEnabled(true);
    ((TextView)((LayoutInflater)getSystemService("layout_inflater")).inflate(2130969499, null).findViewById(2131755121)).setText(2131298242);
    gpu.a((Activity)this, actionBar, getString(2131298242));
  }
  
  private void k() {
    this.f = (MultiStateLayout)findViewById(2131755279);
    this.g = (RecyclerView)findViewById(2131756069);
    this.w = (Button)findViewById(2131756071);
    this.x = (Button)findViewById(2131756070);
    this.g.setNestedScrollingEnabled(false);
    this.y = (FrameLayout)findViewById(2131756065);
    this.z = (TextView)findViewById(2131756068);
    this.z.setVisibility(8);
    this.w.setOnClickListener((View.OnClickListener)new lsl(this));
    this.x.setOnClickListener((View.OnClickListener)new lsm(this));
    this.y.setOnClickListener((View.OnClickListener)new lsn(this));
  }
  
  private boolean n() {
    if (!this.L) {
      mhj.c((Context)this, "Por favor, informe os dados bancários");
      return false;
    } 
    return true;
  }
  
  private String o() {
    int i = 500;
    if (this.N.isEmpty()) {
      this.N.add(Integer.valueOf(500));
      return String.valueOf(500);
    } 
    while (i <= 599) {
      if (!this.N.contains(Integer.valueOf(i))) {
        this.N.add(Integer.valueOf(i));
        return String.valueOf(i);
      } 
      i++;
    } 
    return null;
  }
  
  private gkw<is> p() {
    return (gkw<is>)new lsj(this);
  }
  
  private gkw<is> q() {
    return (gkw<is>)new lsk(this);
  }
  
  public void a() {
    if (n()) {
      Intent intent = new Intent((Context)this, DocumentSuccessActivity.class);
      if (this.G != null)
        intent.putExtra("coverage-name", this.G); 
      intent.putExtra("phone-assistance", this.O);
      startActivity(intent);
      finish();
    } 
  }
  
  public void a(String paramString) {
    String str;
    if (!TextUtils.isEmpty(paramString)) {
      str = o();
      if (TextUtils.isEmpty(str)) {
        mhj.c((Context)this, getResources().getString(2131297360));
        return;
      } 
    } else {
      return;
    } 
    kuw kuw = new kuw();
    kuw.a(paramString);
    kuw.b(paramString);
    kuw.c(str);
    this.B.a(kuw);
    this.H.add(kuw);
    Intent intent = new Intent((Context)this, ScanDocumentActivity.class);
    this.D = this.H.size() - 1;
    startActivityForResult(intent, 5698);
  }
  
  @nfq
  public void a(kxb paramkxb) {
    if (paramkxb.a && mge.INSTANCE.getBankData() != null) {
      try {
        String str = mge.INSTANCE.getBankData().h().substring(0, mge.INSTANCE.getBankData().h().length() - mge.INSTANCE.getBankData().a().length());
        this.z.setVisibility(0);
        this.z.setText(String.format(getResources().getString(2131297501), new Object[] { mge.INSTANCE.getBankData().g(), str, mge.INSTANCE.getBankData().a() }));
      } catch (Exception exception) {
        exception.printStackTrace();
        this.z.setVisibility(8);
      } 
      this.L = true;
    } 
  }
  
  @nfq
  public void a(kxf paramkxf) {
    this.B.a(this.D);
    if (paramkxf.a == null || paramkxf.b != null);
    String str1 = mhj.a(paramkxf.a);
    String str2 = mhj.a(paramkxf.b);
    knv knv = new knv();
    knv.e(this.F.i());
    knv.f(mzr.g());
    knv.g(this.G);
    knv.d(((kuw)this.H.get(this.D)).b());
    knv.c(((kuw)this.H.get(this.D)).e());
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
    try {
      this.J.a(knv, (kxa)new lso(this));
      return;
    } catch (Exception exception) {
      exception.printStackTrace();
      return;
    } 
  }
  
  public boolean a(kus paramkus) {
    if (paramkus.a() < 0)
      return false; 
    File file = b(paramkus);
    return file.exists() ? file.delete() : true;
  }
  
  public void b() {
    this.K = lxn.a();
    this.K.a(this);
    this.K.show(getFragmentManager(), "add-document");
  }
  
  public void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968745);
    k();
    j();
    i();
    e();
    this.J = new kwv(null);
    this.H = new ArrayList<kuw>();
    this.E = new kwo();
    if (getIntent() != null && getIntent().getExtras() != null && getIntent().getExtras().containsKey("sinister-code")) {
      this.F = (kve)(new ejm()).a(getIntent().getExtras().getString("sinister-code"), kve.class);
      this.E.a(this.F.i());
    } 
    if (getIntent() != null && getIntent().getExtras() != null && getIntent().getExtras().containsKey("coverage-key"))
      this.G = getIntent().getExtras().getString("coverage-key"); 
    if (getIntent() != null && getIntent().getExtras() != null && getIntent().getExtras().containsKey("certificate-key"))
      this.I = getIntent().getExtras().getString("certificate-key"); 
    if (getIntent() != null && getIntent().getExtras() != null && getIntent().getExtras().containsKey("phone-assistance"))
      this.O = getIntent().getExtras().getString("phone-assistance"); 
    g();
    h();
  }
  
  protected void onDestroy() {
    super.onDestroy();
    e();
    mge.INSTANCE.setBankData(null);
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
      case 54976:
        break;
    } 
    if (paramArrayOfint.length >= 1 && paramArrayOfint[0] == 0) {
      e((kus)this.H.get(this.D));
      return;
    } 
    mhj.c((Context)this, getResources().getString(2131297378));
  }
  
  public void onResume() {
    super.onResume();
    kws.a().b().b(this);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\seguro\\ui\sinister\activities\SinisterDocumentsActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */