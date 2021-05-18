.class public Lmom;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/santander/app/transferencia/presentation/ListagemFavorecidosActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/transferencia/presentation/ListagemFavorecidosActivity;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lmom;->a:Lcom/santander/app/transferencia/presentation/ListagemFavorecidosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lmom;->a:Lcom/santander/app/transferencia/presentation/ListagemFavorecidosActivity;

    invoke-static {v0}, Lcom/santander/app/transferencia/presentation/ListagemFavorecidosActivity;->b(Lcom/santander/app/transferencia/presentation/ListagemFavorecidosActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lmom;->a:Lcom/santander/app/transferencia/presentation/ListagemFavorecidosActivity;

    invoke-static {v1, v0}, Lcom/santander/app/transferencia/presentation/ListagemFavorecidosActivity;->a(Lcom/santander/app/transferencia/presentation/ListagemFavorecidosActivity;Ljava/lang/String;)V

    .line 99
    return-void
.end method
