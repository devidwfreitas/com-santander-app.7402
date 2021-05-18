package com.santander.app.idsantander;

import akf;
import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.UriMatcher;
import android.database.Cursor;
import android.net.Uri;
import frq;
import java.util.Arrays;

public class IdSantanderProvedor extends ContentProvider {
  private static final int a = 1;
  
  private static final String b = "com.santander.app.idsantander.idsantanderprovedor";
  
  private static final String c = "F39768E84C44CB493774B611C4156";
  
  private static final String d = "819B98B42786BFBEC717C789AF7B3";
  
  private static final String e = "0fk";
  
  private static final UriMatcher f = new UriMatcher(-1);
  
  private akf g;
  
  static {
    f.addURI("com.santander.app.idsantander.idsantanderprovedor", "F39768E84C44CB493774B611C4156", 1);
    f.addURI("com.santander.app.idsantander.idsantanderprovedor", "819B98B42786BFBEC717C789AF7B3", 1);
  }
  
  private boolean a() {
    String str = getCallingPackage();
    return Arrays.<String>asList(getContext().getResources().getStringArray(2131689474)).contains(str);
  }
  
  private boolean a(Uri paramUri) {
    boolean bool2;
    boolean bool1 = false;
    switch (f.match(paramUri)) {
      default:
        bool2 = bool1;
        if (bool1)
          bool2 = a(); 
        return bool2;
      case 1:
        break;
    } 
    bool1 = true;
  }
  
  public int delete(Uri paramUri, String paramString, String[] paramArrayOfString) {
    akf akf1 = this.g;
    if (!a(paramUri))
      paramString = paramString + "0fk"; 
    return akf1.a(paramUri, paramString, paramArrayOfString);
  }
  
  public String getType(Uri paramUri) {
    return a(paramUri) ? "" : null;
  }
  
  public Uri insert(Uri paramUri, ContentValues paramContentValues) {
    return a(paramUri) ? this.g.a(paramUri, paramContentValues) : this.g.a(paramUri, null);
  }
  
  public boolean onCreate() {
    try {
      this.g = new akf(getContext());
      return this.g.a();
    } catch (Exception exception) {
      frq.d("Outros_IDSantander_Tratamento_Excecao", "onCreate() " + exception.getMessage());
      return false;
    } 
  }
  
  public Cursor query(Uri paramUri, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2) {
    akf akf1 = this.g;
    if (!a(paramUri))
      paramString1 = paramString1 + "0fk"; 
    return akf1.a(paramUri, paramArrayOfString1, paramString1, paramArrayOfString2, paramString2);
  }
  
  public int update(Uri paramUri, ContentValues paramContentValues, String paramString, String[] paramArrayOfString) {
    return a(paramUri) ? 1 : 0;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\idsantander\IdSantanderProvedor.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */