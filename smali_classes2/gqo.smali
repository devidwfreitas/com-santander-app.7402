.class final Lgqo;
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
    .line 1442
    iput-object p1, p0, Lgqo;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 1445
    const/4 v0, 0x0

    .line 1446
    iget-object v1, p0, Lgqo;->a:Ljava/lang/String;

    const-string v2, "VG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1447
    const-string v0, "https://www.soliciteseucartao.com.br/cartao/123?utm_source=ib&utm_medium=Mobile&utm_campaing=vg&utm_term=&utm_content=123"

    .line 1448
    const-string v1, "Cartoes_MenuLateral_Cartoes_Submenu_SoliciteSeuCartao_Segmento_VG_PopUp_Acao"

    const-string v2, "Continuar"

    invoke-static {v1, v2}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1456
    :cond_0
    :goto_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1457
    invoke-static {}, Lgpu;->m()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1462
    :goto_1
    invoke-static {}, Lgpu;->o()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1463
    return-void

    .line 1450
    :cond_1
    iget-object v1, p0, Lgqo;->a:Ljava/lang/String;

    const-string v2, "CL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1451
    const-string v0, "https://www.soliciteseucartao.com.br/cartao/free?utm_source=ib&utm_medium=Mobile&utm_campaing=pf&utm_term=&utm_content=free"

    .line 1452
    const-string v1, "Cartoes_MenuLateral_Cartoes_Submenu_SoliciteSeuCartao_Segmento_CL_PopUp_Acao"

    const-string v2, "Continuar"

    invoke-static {v1, v2}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1458
    :catch_0
    move-exception v0

    .line 1459
    invoke-static {}, Lgpu;->m()Landroid/app/Activity;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1460
    const-string v1, "Error"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
