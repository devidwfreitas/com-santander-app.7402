.class public Lbr/com/santander/dynamicauth/features/sms/view/SmsActivity;
.super Landroid/support/v7/app/AppCompatActivity;


# instance fields
.field private a:Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/sms/view/SmsActivity;->a:Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/sms/view/SmsActivity;->a:Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->b()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lbr/com/santander/dynamicauth/features/sms/view/SmsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    invoke-virtual {p0}, Lbr/com/santander/dynamicauth/features/sms/view/SmsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    sget v0, Lbr/com/santander/dynamicauth/R$layout;->activity_sms:I

    invoke-virtual {p0, v0}, Lbr/com/santander/dynamicauth/features/sms/view/SmsActivity;->setContentView(I)V

    new-instance v0, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;

    invoke-direct {v0, p0}, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lbr/com/santander/dynamicauth/features/sms/view/SmsActivity;->a:Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    array-length v0, p3

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/sms/view/SmsActivity;->a:Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->a()V

    :cond_0
    return-void
.end method
