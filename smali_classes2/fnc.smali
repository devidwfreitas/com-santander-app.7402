.class public Lfnc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lftn;

.field final synthetic b:I

.field final synthetic c:Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;Lftn;I)V
    .locals 0

    .prologue
    .line 565
    iput-object p1, p0, Lfnc;->c:Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;

    iput-object p2, p0, Lfnc;->a:Lftn;

    iput p3, p0, Lfnc;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 569
    const-string v0, "Investimentos_RendaFixa_Resgate_Acao"

    const-string v1, "ResgateInvestimento"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    const-string v1, "Investimentos_RendaFixa_Resgate"

    iget-object v0, p0, Lfnc;->a:Lftn;

    invoke-virtual {v0}, Lftn;->a()Ljava/util/Vector;

    move-result-object v0

    iget v2, p0, Lfnc;->b:I

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftk;

    invoke-virtual {v0}, Lftk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lfnc;->c:Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;

    invoke-static {v0}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->i(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;)Lnfe;

    move-result-object v0

    invoke-virtual {v0}, Lnfe;->b()V

    .line 573
    iget-object v0, p0, Lfnc;->c:Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;

    invoke-virtual {v0, p1}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->openRendafixaResgate(Landroid/view/View;)V

    .line 574
    return-void
.end method
