import android.content.ContentProviderOperation;
import android.content.ContentResolver;
import android.content.Context;
import android.content.OperationApplicationException;
import android.database.Cursor;
import android.os.Build;
import android.os.Bundle;
import android.os.RemoteException;
import android.provider.ContactsContract;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import java.util.ArrayList;

public class mie extends mic {
  public static final int a = 1245;
  
  public static final String b = "name-key";
  
  public static final String c = "last-name-key";
  
  public static final String d = "telephone-key";
  
  private String e;
  
  private String f;
  
  private String g;
  
  public static mie a(String paramString) {
    Bundle bundle = new Bundle();
    if (!TextUtils.isEmpty(paramString))
      bundle.putString("telephone-key", paramString); 
    mie mie1 = new mie();
    mie1.setArguments(bundle);
    return mie1;
  }
  
  public static mie a(String paramString1, String paramString2, String paramString3) {
    Bundle bundle = new Bundle();
    if (!TextUtils.isEmpty(paramString1))
      bundle.putString("name-key", paramString1); 
    if (!TextUtils.isEmpty(paramString2))
      bundle.putString("last-name-key", paramString2); 
    if (!TextUtils.isEmpty(paramString3))
      bundle.putString("telephone-key", paramString3); 
    mie mie1 = new mie();
    mie1.setArguments(bundle);
    return mie1;
  }
  
  public RecyclerView.Adapter a() {
    String str1 = String.format(getResources().getString(2131296704), new Object[] { this.e });
    String str2 = getResources().getString(2131296392);
    mhs mhs = new mhs(new String[] { str1, str2, getResources().getString(2131298547) });
    mhs.a(new mif(this, str1, str2));
    return mhs;
  }
  
  public void b() {
    String[] arrayOfString = mhf.a((Context)getActivity(), false, new String[] { "android.permission.READ_CONTACTS", "android.permission.WRITE_CONTACTS" });
    if (Build.VERSION.SDK_INT >= 23 && arrayOfString != null && arrayOfString.length > 0) {
      requestPermissions(new String[] { "android.permission.READ_CONTACTS", "android.permission.WRITE_CONTACTS" }, 1245);
      return;
    } 
    ContentResolver contentResolver = getActivity().getContentResolver();
    Cursor cursor = contentResolver.query(ContactsContract.Contacts.CONTENT_URI, null, null, null, null);
    if (cursor.getCount() > 0)
      while (cursor.moveToNext()) {
        String str = cursor.getString(cursor.getColumnIndex("display_name"));
        if (str != null && str.contains(this.f + " " + this.g)) {
          mhj.a((Context)getActivity(), getResources().getString(2131297397), new mig(this));
          cursor.close();
          return;
        } 
      }  
    ArrayList<ContentProviderOperation> arrayList = new ArrayList();
    arrayList.add(ContentProviderOperation.newInsert(ContactsContract.RawContacts.CONTENT_URI).withValue("account_type", null).withValue("account_name", null).build());
    arrayList.add(ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI).withValueBackReference("raw_contact_id", 0).withValue("mimetype", "vnd.android.cursor.item/name").withValue("data2", this.f).withValue("data3", this.g).build());
    arrayList.add(ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI).withValueBackReference("raw_contact_id", 0).withValue("mimetype", "vnd.android.cursor.item/phone_v2").withValue("data1", this.e).withValue("data2", Integer.valueOf(1)).build());
    try {
      contentResolver.applyBatch("com.android.contacts", arrayList);
    } catch (RemoteException remoteException) {
      remoteException.printStackTrace();
    } catch (OperationApplicationException operationApplicationException) {
      operationApplicationException.printStackTrace();
    } 
    mhj.a((Context)getActivity(), getResources().getString(2131296388), new mih(this));
  }
  
  public void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
    if (getArguments().containsKey("name-key")) {
      this.f = getArguments().getString("name-key");
    } else {
      this.f = getResources().getString(2131298245);
    } 
    if (getArguments().containsKey("last-name-key")) {
      this.g = getArguments().getString("last-name-key");
    } else {
      this.g = getResources().getString(2131298059);
    } 
    if (getArguments().containsKey("telephone-key")) {
      this.e = getArguments().getString("telephone-key");
      return;
    } 
    this.e = getResources().getString(2131298796);
  }
  
  public void onRequestPermissionsResult(int paramInt, @NonNull String[] paramArrayOfString, @NonNull int[] paramArrayOfint) {
    super.onRequestPermissionsResult(paramInt, paramArrayOfString, paramArrayOfint);
    switch (paramInt) {
      default:
        return;
      case 1245:
        break;
    } 
    if (mhf.a((Context)getActivity(), paramArrayOfString)) {
      b();
      return;
    } 
    mhj.c((Context)getActivity(), getResources().getString(2131298262));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mie.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */