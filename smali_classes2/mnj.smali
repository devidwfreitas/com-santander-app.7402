.class public Lmnj;
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
    .line 113
    iput-object p1, p0, Lmnj;->a:Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 129
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lmnj;->a:Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;

    invoke-static {v0}, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->a(Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 122
    iget-object v0, p0, Lmnj;->a:Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;

    invoke-static {v0}, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->b(Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 124
    :cond_0
    return-void
.end method
