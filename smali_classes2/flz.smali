.class public Lflz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnez;


# instance fields
.field final synthetic a:Ljava/util/Vector;

.field final synthetic b:Lcom/santander/app/RendaFixaAplicacaoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/RendaFixaAplicacaoActivity;Ljava/util/Vector;)V
    .locals 0

    .prologue
    .line 391
    iput-object p1, p0, Lflz;->b:Lcom/santander/app/RendaFixaAplicacaoActivity;

    iput-object p2, p0, Lflz;->a:Ljava/util/Vector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 394
    return-void
.end method

.method public b(I)V
    .locals 2

    .prologue
    .line 399
    const-string v1, "Investimentos_RendaFixa_Aplicar_Prazo_Acao"

    iget-object v0, p0, Lflz;->a:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lflz;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfpb;

    invoke-virtual {v0}, Lfpb;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, v0}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    return-void

    .line 399
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
