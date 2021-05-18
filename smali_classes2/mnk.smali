.class public Lmnk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lmnk;->a:Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 153
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lmnk;->a:Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;

    invoke-static {v0}, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->c(Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;)Lmkq;

    move-result-object v0

    invoke-virtual {v0}, Lmkq;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "033"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmnk;->a:Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;

    invoke-static {v0}, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->c(Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;)Lmkq;

    move-result-object v0

    invoke-virtual {v0}, Lmkq;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0033"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 141
    :cond_0
    iget-object v0, p0, Lmnk;->a:Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;

    invoke-static {v0}, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->b(Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 142
    iget-object v0, p0, Lmnk;->a:Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;

    invoke-static {v0}, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->d(Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 149
    :cond_1
    :goto_0
    return-void

    .line 145
    :cond_2
    iget-object v0, p0, Lmnk;->a:Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;

    invoke-static {v0}, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->b(Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    .line 146
    iget-object v0, p0, Lmnk;->a:Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;

    invoke-static {v0}, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->d(Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0
.end method
