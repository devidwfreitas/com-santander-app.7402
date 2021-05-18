.class public Lmor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/santander/app/transferencia/presentation/TransferenciasActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/transferencia/presentation/TransferenciasActivity;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lmor;->a:Lcom/santander/app/transferencia/presentation/TransferenciasActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lmor;->a:Lcom/santander/app/transferencia/presentation/TransferenciasActivity;

    invoke-static {v0}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->a(Lcom/santander/app/transferencia/presentation/TransferenciasActivity;)Lmld;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmor;->a:Lcom/santander/app/transferencia/presentation/TransferenciasActivity;

    invoke-static {v0}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->b(Lcom/santander/app/transferencia/presentation/TransferenciasActivity;)Lmkw;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 131
    :cond_0
    iget-object v0, p0, Lmor;->a:Lcom/santander/app/transferencia/presentation/TransferenciasActivity;

    invoke-static {v0}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->c(Lcom/santander/app/transferencia/presentation/TransferenciasActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 134
    :cond_1
    iget-object v0, p0, Lmor;->a:Lcom/santander/app/transferencia/presentation/TransferenciasActivity;

    invoke-static {v0}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->d(Lcom/santander/app/transferencia/presentation/TransferenciasActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0,00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 135
    iget-object v0, p0, Lmor;->a:Lcom/santander/app/transferencia/presentation/TransferenciasActivity;

    invoke-static {v0}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->c(Lcom/santander/app/transferencia/presentation/TransferenciasActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 137
    :cond_2
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 125
    return-void
.end method
