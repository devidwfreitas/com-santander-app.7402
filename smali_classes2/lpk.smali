.class Llpk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lloz;


# direct methods
.method constructor <init>(Lloz;)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Llpk;->a:Lloz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Llpk;->a:Lloz;

    invoke-static {v0}, Lloz;->a(Lloz;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v0

    invoke-virtual {v0}, Lmhz;->i()Lkqj;

    move-result-object v0

    if-nez v0, :cond_0

    .line 347
    iget-object v0, p0, Llpk;->a:Lloz;

    invoke-static {v0}, Lloz;->a(Lloz;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v0

    new-instance v1, Lkqj;

    invoke-direct {v1}, Lkqj;-><init>()V

    invoke-virtual {v0, v1}, Lmhz;->a(Lkqj;)V

    .line 349
    :cond_0
    new-instance v0, Lksa;

    invoke-direct {v0}, Lksa;-><init>()V

    .line 350
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lksa;->a(Z)V

    .line 351
    iget-object v1, p0, Llpk;->a:Lloz;

    invoke-static {v1}, Lloz;->f(Lloz;)Landroid/support/design/widget/TextInputEditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmhj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lksa;->b(Ljava/lang/String;)V

    .line 352
    iget-object v1, p0, Llpk;->a:Lloz;

    invoke-static {v1}, Lloz;->a(Lloz;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v1

    invoke-virtual {v1}, Lmhz;->i()Lkqj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lkqj;->a(Lksa;)V

    .line 353
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 337
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 342
    return-void
.end method
