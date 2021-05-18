import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class bfn extends bgg {
  bgi e;
  
  bfu f;
  
  Context g;
  
  public bfn(Context paramContext, bfu parambfu) {
    super(paramContext);
    this.f = parambfu;
    this.e = d().a();
  }
  
  public int a(bfl parambfl) {
    // Byte code:
    //   0: new android/content/ContentValues
    //   3: dup
    //   4: invokespecial <init> : ()V
    //   7: astore #4
    //   9: aload_0
    //   10: aload_1
    //   11: invokevirtual b : ()Lbfv;
    //   14: invokevirtual a : (Ljava/io/Serializable;)Ljava/lang/String;
    //   17: astore_1
    //   18: aload_0
    //   19: invokevirtual d : ()Lbgh;
    //   22: invokevirtual getClass : ()Ljava/lang/Class;
    //   25: pop
    //   26: aload #4
    //   28: ldc 'appblob'
    //   30: aload_1
    //   31: invokevirtual put : (Ljava/lang/String;Ljava/lang/String;)V
    //   34: aload_0
    //   35: invokevirtual d : ()Lbgh;
    //   38: invokevirtual a : ()Lbgi;
    //   41: astore_1
    //   42: aload_1
    //   43: invokevirtual a : ()Landroid/database/sqlite/SQLiteDatabase;
    //   46: astore #5
    //   48: aload_0
    //   49: invokevirtual d : ()Lbgh;
    //   52: invokevirtual getClass : ()Ljava/lang/Class;
    //   55: pop
    //   56: aload #5
    //   58: ldc 'datablink_app_blob'
    //   60: aconst_null
    //   61: aload #4
    //   63: invokevirtual insert : (Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   66: lstore_2
    //   67: aload_1
    //   68: invokevirtual close : ()V
    //   71: lload_2
    //   72: ldc2_w -1
    //   75: lcmp
    //   76: ifeq -> 89
    //   79: iconst_0
    //   80: ireturn
    //   81: astore_1
    //   82: aload_1
    //   83: invokevirtual printStackTrace : ()V
    //   86: goto -> 34
    //   89: iconst_1
    //   90: ireturn
    // Exception table:
    //   from	to	target	type
    //   9	34	81	java/io/IOException
  }
  
  public int a(bfm parambfm) {
    ContentValues contentValues = new ContentValues();
    try {
      d().getClass();
      contentValues.put("blob", a(parambfm.c()));
      d().getClass();
      contentValues.put("serialnumber", parambfm.i());
      bgi bgi1 = d().a();
      SQLiteDatabase sQLiteDatabase = bgi1.a();
      d().getClass();
      d().getClass();
      long l = sQLiteDatabase.update("datablink_blob", contentValues, String.valueOf("id") + " = ?", new String[] { String.valueOf(parambfm.b()) });
      bgi1.close();
      if (l >= 1L)
        return 0; 
    } catch (IOException iOException) {
      iOException.printStackTrace();
      return 2;
    } 
    return 1;
  }
  
  public String a(Serializable paramSerializable) {
    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
    ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
    objectOutputStream.writeObject(paramSerializable);
    objectOutputStream.close();
    byte[] arrayOfByte = byteArrayOutputStream.toByteArray();
    byteArrayOutputStream = new ByteArrayOutputStream();
    DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
    (new ax()).a(arrayOfByte, 0, arrayOfByte.length, dataOutputStream);
    return new String(byteArrayOutputStream.toByteArray());
  }
  
  public List<bfm> a() {
    ArrayList<bfm> arrayList = new ArrayList();
    bgi bgi1 = d().a();
    d().getClass();
    String str = b("datablink_blob");
    Cursor cursor = bgi1.a(bgi1.b(), str);
    if (cursor.moveToFirst())
      while (true) {
        bfm bfm = new bfm(this.f);
        try {
          d().getClass();
          bfm.a((bfx)e(cursor.getString(cursor.getColumnIndex("blob"))));
        } catch (IOException iOException) {
          iOException.printStackTrace();
        } catch (ClassNotFoundException classNotFoundException) {
          classNotFoundException.printStackTrace();
        } 
        d().getClass();
        bfm.a(cursor.getInt(cursor.getColumnIndex("id")));
        d().getClass();
        bfm.a(cursor.getString(cursor.getColumnIndex("serialnumber")));
        arrayList.add(bfm);
        if (!cursor.moveToNext()) {
          bgi1.close();
          return arrayList;
        } 
      }  
    bgi1.close();
    return arrayList;
  }
  
  public int b(bfl parambfl) {
    // Byte code:
    //   0: new android/content/ContentValues
    //   3: dup
    //   4: invokespecial <init> : ()V
    //   7: astore #4
    //   9: aload_0
    //   10: aload_1
    //   11: invokevirtual b : ()Lbfv;
    //   14: invokevirtual a : (Ljava/io/Serializable;)Ljava/lang/String;
    //   17: astore #5
    //   19: aload_0
    //   20: invokevirtual d : ()Lbgh;
    //   23: invokevirtual getClass : ()Ljava/lang/Class;
    //   26: pop
    //   27: aload #4
    //   29: ldc 'appblob'
    //   31: aload #5
    //   33: invokevirtual put : (Ljava/lang/String;Ljava/lang/String;)V
    //   36: aload_0
    //   37: invokevirtual d : ()Lbgh;
    //   40: invokevirtual a : ()Lbgi;
    //   43: astore #5
    //   45: aload_0
    //   46: invokevirtual d : ()Lbgh;
    //   49: invokevirtual getClass : ()Ljava/lang/Class;
    //   52: pop
    //   53: new java/lang/StringBuilder
    //   56: dup
    //   57: ldc 'id'
    //   59: invokestatic valueOf : (Ljava/lang/Object;)Ljava/lang/String;
    //   62: invokespecial <init> : (Ljava/lang/String;)V
    //   65: ldc '=''
    //   67: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   70: aload_1
    //   71: invokevirtual d : ()I
    //   74: iconst_1
    //   75: iadd
    //   76: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   79: ldc '''
    //   81: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   84: invokevirtual toString : ()Ljava/lang/String;
    //   87: astore_1
    //   88: aload #5
    //   90: invokevirtual a : ()Landroid/database/sqlite/SQLiteDatabase;
    //   93: astore #6
    //   95: aload_0
    //   96: invokevirtual d : ()Lbgh;
    //   99: invokevirtual getClass : ()Ljava/lang/Class;
    //   102: pop
    //   103: aload #6
    //   105: ldc 'datablink_app_blob'
    //   107: aload #4
    //   109: aload_1
    //   110: aconst_null
    //   111: invokevirtual update : (Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   114: i2l
    //   115: lstore_2
    //   116: aload #5
    //   118: invokevirtual close : ()V
    //   121: lload_2
    //   122: lconst_1
    //   123: lcmp
    //   124: ifne -> 139
    //   127: iconst_0
    //   128: ireturn
    //   129: astore #5
    //   131: aload #5
    //   133: invokevirtual printStackTrace : ()V
    //   136: goto -> 36
    //   139: iconst_1
    //   140: ireturn
    // Exception table:
    //   from	to	target	type
    //   9	36	129	java/io/IOException
  }
  
  public int b(bfm parambfm) {
    ContentValues contentValues = new ContentValues();
    try {
      d().getClass();
      contentValues.put("blob", a(parambfm.c()));
      d().getClass();
      contentValues.put("serialnumber", parambfm.i());
      bgi bgi1 = d().a();
      SQLiteDatabase sQLiteDatabase = bgi1.a();
      d().getClass();
      long l = sQLiteDatabase.insert("datablink_blob", null, contentValues);
      bgi1.close();
      if (l != -1L)
        return 0; 
    } catch (IOException iOException) {
      iOException.printStackTrace();
      return 2;
    } 
    return 1;
  }
  
  public List<String> b() {
    List<bfm> list = a();
    ArrayList<String> arrayList = new ArrayList();
    for (int i = 0;; i++) {
      if (i >= list.size())
        return arrayList; 
      arrayList.add(((bfm)list.get(i)).i());
    } 
  }
  
  public int c(bfm parambfm) {
    bgi bgi1 = d().a();
    SQLiteDatabase sQLiteDatabase = bgi1.a();
    d().getClass();
    d().getClass();
    sQLiteDatabase.delete("datablink_blob", String.valueOf("id") + " = ?", new String[] { String.valueOf(parambfm.b()) });
    bgi1.close();
    return 0;
  }
  
  public bfl c() {
    bgi bgi1 = d().a();
    d().getClass();
    String str2 = b("datablink_app_blob");
    Cursor cursor = bgi1.a(bgi1.b(), str2);
    if (cursor.getCount() == 0) {
      bgi1.close();
      return null;
    } 
    cursor.moveToFirst();
    d().getClass();
    String str1 = cursor.getString(cursor.getColumnIndex("appblob"));
    bfl bfl = new bfl(this.f);
    bfl.a((bfv)e(str1));
    if (bfl == null) {
      bgi1.close();
      return null;
    } 
    bgi1.close();
    return bfl;
  }
  
  public bfm d(String paramString) {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual d : ()Lbgh;
    //   4: invokevirtual a : ()Lbgi;
    //   7: astore_2
    //   8: aload_0
    //   9: invokevirtual d : ()Lbgh;
    //   12: invokevirtual getClass : ()Ljava/lang/Class;
    //   15: pop
    //   16: aload_0
    //   17: invokevirtual d : ()Lbgh;
    //   20: invokevirtual getClass : ()Ljava/lang/Class;
    //   23: pop
    //   24: aload_0
    //   25: ldc 'datablink_blob'
    //   27: ldc 'serialnumber'
    //   29: aload_1
    //   30: invokevirtual a : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   33: astore_1
    //   34: aload_2
    //   35: aload_2
    //   36: invokevirtual b : ()Landroid/database/sqlite/SQLiteDatabase;
    //   39: aload_1
    //   40: invokevirtual a : (Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/database/Cursor;
    //   43: astore_1
    //   44: new bfm
    //   47: dup
    //   48: aload_0
    //   49: getfield f : Lbfu;
    //   52: invokespecial <init> : (Lbgl;)V
    //   55: astore_3
    //   56: aload_1
    //   57: invokeinterface moveToFirst : ()Z
    //   62: ifeq -> 150
    //   65: aload_0
    //   66: invokevirtual d : ()Lbgh;
    //   69: invokevirtual getClass : ()Ljava/lang/Class;
    //   72: pop
    //   73: aload_3
    //   74: aload_1
    //   75: aload_1
    //   76: ldc 'id'
    //   78: invokeinterface getColumnIndex : (Ljava/lang/String;)I
    //   83: invokeinterface getString : (I)Ljava/lang/String;
    //   88: invokestatic parseInt : (Ljava/lang/String;)I
    //   91: invokevirtual a : (I)V
    //   94: aload_0
    //   95: invokevirtual d : ()Lbgh;
    //   98: invokevirtual getClass : ()Ljava/lang/Class;
    //   101: pop
    //   102: aload_3
    //   103: aload_0
    //   104: ldc 'blob'
    //   106: invokevirtual e : (Ljava/lang/String;)Ljava/lang/Object;
    //   109: checkcast bfx
    //   112: invokevirtual a : (Lbfx;)V
    //   115: aload_0
    //   116: invokevirtual d : ()Lbgh;
    //   119: invokevirtual getClass : ()Ljava/lang/Class;
    //   122: pop
    //   123: aload_3
    //   124: aload_1
    //   125: aload_1
    //   126: ldc 'serialnumber'
    //   128: invokeinterface getColumnIndex : (Ljava/lang/String;)I
    //   133: invokeinterface getString : (I)Ljava/lang/String;
    //   138: invokevirtual a : (Ljava/lang/String;)V
    //   141: aload_1
    //   142: invokeinterface moveToNext : ()Z
    //   147: ifne -> 65
    //   150: aload_2
    //   151: invokevirtual close : ()V
    //   154: aload_3
    //   155: areturn
    //   156: astore #4
    //   158: aload #4
    //   160: invokevirtual printStackTrace : ()V
    //   163: goto -> 141
    // Exception table:
    //   from	to	target	type
    //   65	141	156	java/lang/ClassNotFoundException
  }
  
  public Object e(String paramString) {
    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
    DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
    (new ax()).a(paramString, dataOutputStream);
    ObjectInputStream objectInputStream = new ObjectInputStream(new ByteArrayInputStream(byteArrayOutputStream.toByteArray()));
    Object object = objectInputStream.readObject();
    objectInputStream.close();
    return object;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bfn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */