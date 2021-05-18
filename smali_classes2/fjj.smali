.class public Lfjj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnez;


# instance fields
.field final synthetic a:Ljava/util/Vector;

.field final synthetic b:Lcom/santander/app/PagamentoFacturaCartoesActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/PagamentoFacturaCartoesActivity;Ljava/util/Vector;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lfjj;->b:Lcom/santander/app/PagamentoFacturaCartoesActivity;

    iput-object p2, p0, Lfjj;->a:Ljava/util/Vector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 295
    return-void
.end method

.method public b(I)V
    .locals 3

    .prologue
    .line 299
    const-string v1, "Fatura_Acao"

    iget-object v0, p0, Lfjj;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfos;

    invoke-virtual {v0}, Lfos;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "agendar"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Agendado"

    :goto_0
    invoke-static {v1, v0}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    return-void

    .line 299
    :cond_0
    const-string v0, "PagarHoje"

    goto :goto_0
.end method
