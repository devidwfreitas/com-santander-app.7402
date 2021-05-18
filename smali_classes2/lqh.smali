.class public Llqh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkxl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkxl",
        "<",
        "Lktp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Llqh;->a:Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 354
    check-cast p1, Lktp;

    invoke-virtual {p0, p1}, Llqh;->a(Lktp;)V

    return-void
.end method

.method public a(Lktp;)V
    .locals 4

    .prologue
    .line 357
    iget-object v0, p0, Llqh;->a:Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 358
    :cond_1
    iget-object v0, p0, Llqh;->a:Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->c(Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->CONTENT:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 359
    if-eqz p1, :cond_0

    .line 360
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lktp;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lktp;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 361
    iget-object v0, p0, Llqh;->a:Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->e(Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    const-string v1, "033 - SANTANDER"

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    iget-object v0, p0, Llqh;->a:Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->g(Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p1}, Lktp;->b()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x30

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Lmhj;->a(Ljava/lang/String;CI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 365
    invoke-virtual {p1}, Lktp;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 366
    iget-object v0, p0, Llqh;->a:Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->h(Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p1}, Lktp;->g()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lktp;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 367
    iget-object v0, p0, Llqh;->a:Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->i(Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p1}, Lktp;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lktp;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 369
    :cond_2
    iget-object v0, p0, Llqh;->a:Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->h(Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p1}, Lktp;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
