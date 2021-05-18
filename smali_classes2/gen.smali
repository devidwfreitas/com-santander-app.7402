.class Lgen;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lged;


# instance fields
.field final synthetic a:Lgej;


# direct methods
.method constructor <init>(Lgej;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lgen;->a:Lgej;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .prologue
    .line 105
    const-string v0, "Outros_LojaOnline_Acao"

    const-string v1, "FinanciamentoDeVeiculos"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v6, p0, Lgen;->a:Lgej;

    iget-object v0, p0, Lgen;->a:Lgej;

    .line 107
    invoke-static {v0}, Lgej;->b(Lgej;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lgeo;

    invoke-direct {v1, p0}, Lgeo;-><init>(Lgen;)V

    new-instance v2, Lgep;

    invoke-direct {v2, p0}, Lgep;-><init>(Lgen;)V

    iget-object v3, p0, Lgen;->a:Lgej;

    .line 123
    invoke-static {v3}, Lgej;->b(Lgej;)Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0907e0

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lgen;->a:Lgej;

    invoke-static {v4}, Lgej;->b(Lgej;)Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0902ef

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lgen;->a:Lgej;

    invoke-static {v5}, Lgej;->b(Lgej;)Landroid/app/Activity;

    move-result-object v5

    const v7, 0x7f090208

    invoke-virtual {v5, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 106
    invoke-static/range {v0 .. v5}, Lmxn;->b(Landroid/app/Activity;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    invoke-static {v6, v0}, Lgej;->a(Lgej;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 124
    return-void
.end method
