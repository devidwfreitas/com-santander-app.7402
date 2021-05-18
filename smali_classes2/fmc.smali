.class public Lfmc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/santander/app/RendaFixaAplicacaoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/RendaFixaAplicacaoActivity;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 646
    iput-object p1, p0, Lfmc;->b:Lcom/santander/app/RendaFixaAplicacaoActivity;

    iput-object p2, p0, Lfmc;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 648
    iget-object v0, p0, Lfmc;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 650
    iget-object v0, p0, Lfmc;->b:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->g(Lcom/santander/app/RendaFixaAplicacaoActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfmc;->b:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->g(Lcom/santander/app/RendaFixaAplicacaoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lfmc;->b:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->g(Lcom/santander/app/RendaFixaAplicacaoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 654
    :cond_0
    iget-object v0, p0, Lfmc;->b:Lcom/santander/app/RendaFixaAplicacaoActivity;

    iget-object v1, p0, Lfmc;->b:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v1}, Lcom/santander/app/RendaFixaAplicacaoActivity;->c(Lcom/santander/app/RendaFixaAplicacaoActivity;)Lcom/santander/app/RendaFixaAplicacaoActivity;

    move-result-object v1

    invoke-static {v1}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/RendaFixaAplicacaoActivity;->a(Lcom/santander/app/RendaFixaAplicacaoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 656
    iget-object v0, p0, Lfmc;->b:Lcom/santander/app/RendaFixaAplicacaoActivity;

    new-instance v1, Lfmg;

    iget-object v2, p0, Lfmc;->b:Lcom/santander/app/RendaFixaAplicacaoActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lfmg;-><init>(Lcom/santander/app/RendaFixaAplicacaoActivity;Lflx;)V

    invoke-static {v0, v1}, Lcom/santander/app/RendaFixaAplicacaoActivity;->a(Lcom/santander/app/RendaFixaAplicacaoActivity;Lfmg;)Lfmg;

    .line 657
    iget-object v0, p0, Lfmc;->b:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->m(Lcom/santander/app/RendaFixaAplicacaoActivity;)Lfmg;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lfmg;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 658
    return-void
.end method
