.class public Lkp;
.super Landroid/os/CountDownTimer;


# instance fields
.field final synthetic a:Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;


# direct methods
.method public constructor <init>(Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;JJ)V
    .locals 0

    iput-object p1, p0, Lkp;->a:Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Lkp;->a:Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;

    invoke-static {v0}, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->a(Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkp;->a:Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;

    invoke-static {v0}, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->a(Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lkp;->a:Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;

    invoke-static {v0}, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->a(Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setClickable(Z)V

    iget-object v0, p0, Lkp;->a:Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;

    invoke-static {v0}, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->c(Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lkp;->a:Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;

    invoke-static {v1}, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->b(Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbr/com/santander/dynamicauth/R$drawable;->style_gray_button:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/support/v4/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
