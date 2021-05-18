import android.accounts.Account;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import java.util.ArrayList;

public final class col {
  public static Intent a(Account paramAccount, ArrayList<Account> paramArrayList, String[] paramArrayOfString1, boolean paramBoolean, String paramString1, String paramString2, String[] paramArrayOfString2, Bundle paramBundle) {
    return a(paramAccount, paramArrayList, paramArrayOfString1, paramBoolean, paramString1, paramString2, paramArrayOfString2, paramBundle, false);
  }
  
  public static Intent a(Account paramAccount, ArrayList<Account> paramArrayList, String[] paramArrayOfString1, boolean paramBoolean1, String paramString1, String paramString2, String[] paramArrayOfString2, Bundle paramBundle, boolean paramBoolean2) {
    return a(paramAccount, paramArrayList, paramArrayOfString1, paramBoolean1, paramString1, paramString2, paramArrayOfString2, paramBundle, paramBoolean2, 0, 0);
  }
  
  public static Intent a(Account paramAccount, ArrayList<Account> paramArrayList, String[] paramArrayOfString1, boolean paramBoolean1, String paramString1, String paramString2, String[] paramArrayOfString2, Bundle paramBundle, boolean paramBoolean2, int paramInt1, int paramInt2) {
    return a(paramAccount, paramArrayList, paramArrayOfString1, paramBoolean1, paramString1, paramString2, paramArrayOfString2, paramBundle, paramBoolean2, paramInt1, paramInt2, null, false);
  }
  
  public static Intent a(Account paramAccount, ArrayList<Account> paramArrayList, String[] paramArrayOfString1, boolean paramBoolean1, String paramString1, String paramString2, String[] paramArrayOfString2, Bundle paramBundle, boolean paramBoolean2, int paramInt1, int paramInt2, String paramString3, boolean paramBoolean3) {
    Intent intent = new Intent();
    if (!paramBoolean3) {
      boolean bool;
      if (paramString3 == null) {
        bool = true;
      } else {
        bool = false;
      } 
      csp.b(bool, "We only support hostedDomain filter for account chip styled account picker");
    } 
    if (paramBoolean3) {
      String str1 = "com.google.android.gms.common.account.CHOOSE_ACCOUNT_USERTILE";
      intent.setAction(str1);
      intent.setPackage("com.google.android.gms");
      intent.putExtra("allowableAccounts", paramArrayList);
      intent.putExtra("allowableAccountTypes", paramArrayOfString1);
      intent.putExtra("addAccountOptions", paramBundle);
      intent.putExtra("selectedAccount", (Parcelable)paramAccount);
      intent.putExtra("alwaysPromptForAccount", paramBoolean1);
      intent.putExtra("descriptionTextOverride", paramString1);
      intent.putExtra("authTokenType", paramString2);
      intent.putExtra("addAccountRequiredFeatures", paramArrayOfString2);
      intent.putExtra("setGmsCoreAccount", paramBoolean2);
      intent.putExtra("overrideTheme", paramInt1);
      intent.putExtra("overrideCustomTheme", paramInt2);
      intent.putExtra("hostedDomainFilter", paramString3);
      return intent;
    } 
    String str = "com.google.android.gms.common.account.CHOOSE_ACCOUNT";
    intent.setAction(str);
    intent.setPackage("com.google.android.gms");
    intent.putExtra("allowableAccounts", paramArrayList);
    intent.putExtra("allowableAccountTypes", paramArrayOfString1);
    intent.putExtra("addAccountOptions", paramBundle);
    intent.putExtra("selectedAccount", (Parcelable)paramAccount);
    intent.putExtra("alwaysPromptForAccount", paramBoolean1);
    intent.putExtra("descriptionTextOverride", paramString1);
    intent.putExtra("authTokenType", paramString2);
    intent.putExtra("addAccountRequiredFeatures", paramArrayOfString2);
    intent.putExtra("setGmsCoreAccount", paramBoolean2);
    intent.putExtra("overrideTheme", paramInt1);
    intent.putExtra("overrideCustomTheme", paramInt2);
    intent.putExtra("hostedDomainFilter", paramString3);
    return intent;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\col.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */