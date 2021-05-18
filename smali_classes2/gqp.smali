.class final Lgqp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1465
    iput-object p1, p0, Lgqp;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1468
    iget-object v0, p0, Lgqp;->a:Ljava/lang/String;

    const-string v1, "VG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1469
    const-string v0, "Cartoes_MenuLateral_Cartoes_Submenu_SoliciteSeuCartao_Segmento_VG_PopUp_Acao"

    const-string v1, "Cancelar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1473
    :cond_0
    :goto_0
    invoke-static {}, Lgpu;->o()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1474
    return-void

    .line 1470
    :cond_1
    iget-object v0, p0, Lgqp;->a:Ljava/lang/String;

    const-string v1, "CL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1471
    const-string v0, "Cartoes_MenuLateral_Cartoes_Submenu_SoliciteSeuCartao_Segmento_CL_PopUp_Acao"

    const-string v1, "Cancelar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
