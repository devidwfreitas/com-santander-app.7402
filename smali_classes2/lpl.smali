.class Llpl;
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
    .line 357
    iput-object p1, p0, Llpl;->a:Lloz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 370
    iget-object v0, p0, Llpl;->a:Lloz;

    invoke-static {v0}, Lloz;->a(Lloz;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v0

    invoke-virtual {v0}, Lmhz;->i()Lkqj;

    move-result-object v0

    if-nez v0, :cond_0

    .line 371
    iget-object v0, p0, Llpl;->a:Lloz;

    invoke-static {v0}, Lloz;->a(Lloz;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v0

    new-instance v1, Lkqj;

    invoke-direct {v1}, Lkqj;-><init>()V

    invoke-virtual {v0, v1}, Lmhz;->a(Lkqj;)V

    .line 373
    :cond_0
    new-instance v0, Lkqy;

    invoke-direct {v0}, Lkqy;-><init>()V

    .line 374
    invoke-virtual {v0, v2}, Lkqy;->a(Z)V

    .line 375
    iget-object v1, p0, Llpl;->a:Lloz;

    invoke-static {v1}, Lloz;->g(Lloz;)Landroid/support/design/widget/TextInputEditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkqy;->b(Ljava/lang/String;)V

    .line 376
    iget-object v1, p0, Llpl;->a:Lloz;

    invoke-static {v1}, Lloz;->a(Lloz;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v1

    invoke-virtual {v1}, Lmhz;->i()Lkqj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lkqj;->a(Lkqy;)V

    .line 377
    iget-object v0, p0, Llpl;->a:Lloz;

    invoke-static {v0, v2}, Lloz;->a(Lloz;Z)Z

    .line 378
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 361
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 366
    return-void
.end method
