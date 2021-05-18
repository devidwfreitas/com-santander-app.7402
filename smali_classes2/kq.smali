.class public Lkq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;


# direct methods
.method public constructor <init>(Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;)V
    .locals 0

    iput-object p1, p0, Lkq;->a:Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lt v0, v3, :cond_0

    iget-object v0, p0, Lkq;->a:Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;

    invoke-static {v0}, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->d(Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lkq;->a:Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;

    invoke-static {v0}, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->c(Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lkq;->a:Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;

    invoke-static {v0}, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->c(Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lkq;->a:Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;

    invoke-static {v0}, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->d(Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lkq;->a:Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;

    invoke-static {v0}, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->c(Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lkq;->a:Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;

    invoke-static {v0}, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->c(Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
