.class public Llpx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lgrz;

.field final synthetic c:Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;Landroid/widget/EditText;Lgrz;)V
    .locals 0

    .prologue
    .line 614
    iput-object p1, p0, Llpx;->c:Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;

    iput-object p2, p0, Llpx;->a:Landroid/widget/EditText;

    iput-object p3, p0, Llpx;->b:Lgrz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 633
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 627
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 619
    iget-object v0, p0, Llpx;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 620
    iget-object v1, p0, Llpx;->b:Lgrz;

    invoke-virtual {v1, v0}, Lgrz;->a(Ljava/lang/String;)V

    .line 621
    return-void
.end method
