.class final Lgqk;
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
    .line 1386
    iput-object p1, p0, Lgqk;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1389
    invoke-static {}, Lgpu;->o()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1390
    invoke-static {}, Lgpu;->m()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lgqk;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lmyo;->b(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1391
    const-string v0, "Cartoes_MenuLateral_Cartoes_Submenu_ConhecaAppWay_PopUp_Acao"

    const-string v1, "Continuar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1392
    return-void
.end method
