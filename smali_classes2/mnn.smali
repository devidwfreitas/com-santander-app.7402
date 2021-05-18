.class public Lmnn;
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
    .line 368
    iput-object p1, p0, Lmnn;->a:Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lmnn;->a:Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;

    invoke-static {v0}, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->i(Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;)V

    .line 383
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 378
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 373
    return-void
.end method
