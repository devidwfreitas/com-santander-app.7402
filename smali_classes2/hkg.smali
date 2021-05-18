.class Lhkg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lgky;

.field final synthetic b:Lhkf;


# direct methods
.method constructor <init>(Lhkf;Lgky;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lhkg;->b:Lhkf;

    iput-object p2, p0, Lhkg;->a:Lgky;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lhkg;->a:Lgky;

    invoke-virtual {v0}, Lgky;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "iof"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    const-string v0, "CreditoFinanciamento_AnteciparIR_Acao"

    const-string v1, "InformativoIOF"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lhkg;->b:Lhkf;

    invoke-static {v0}, Lhkf;->a(Lhkf;)V

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    iget-object v0, p0, Lhkg;->a:Lgky;

    invoke-virtual {v0}, Lgky;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "vencimento"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    const-string v0, "CreditoFinanciamento_AnteciparIR_Acao"

    const-string v1, "InformativoVencimentoOperacao"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lhkg;->b:Lhkf;

    invoke-static {v0}, Lhkf;->b(Lhkf;)V

    goto :goto_0
.end method
