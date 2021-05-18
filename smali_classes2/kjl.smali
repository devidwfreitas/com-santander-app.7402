.class Lkjl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnez;


# instance fields
.field final synthetic a:Lkjk;


# direct methods
.method constructor <init>(Lkjk;)V
    .locals 0

    .prologue
    .line 396
    iput-object p1, p0, Lkjl;->a:Lkjk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 399
    return-void
.end method

.method public b(I)V
    .locals 2

    .prologue
    .line 404
    const-string v0, "Outros_RecargaDeTelefone_RecargaProgramada_Acao"

    const-string v1, "SelecionarContaOrigem"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lkjl;->a:Lkjk;

    invoke-static {v0}, Lkjk;->a(Lkjk;)Lcom/santander/app/widget/Carrossel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/widget/Carrossel;->a()I

    .line 406
    return-void
.end method
