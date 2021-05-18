.class public Liqs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;)V
    .locals 0

    .prologue
    .line 1068
    iput-object p1, p0, Liqs;->a:Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 1072
    iget-object v0, p0, Liqs;->a:Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-static {v0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->f(Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;)Lmip;

    move-result-object v0

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->A()Ljava/lang/String;

    move-result-object v0

    .line 1074
    sget-object v1, Lnaz;->OFERTAR_ID_MODO_CONSULTIVO_TELA_02_ID_NAO_HABILITADO:Lnaz;

    invoke-virtual {v1}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lnaz;->MODO_CONSULTIVO_TELA_06_APARELHO_NAO_HABILITADO_APARELHO_PENDENTE:Lnaz;

    .line 1075
    invoke-virtual {v1}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lnaz;->HOME_CONSULTIVA:Lnaz;

    .line 1076
    invoke-virtual {v1}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1078
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Liqs;->a:Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-static {v1}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->a(Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;)Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    move-result-object v1

    const-class v2, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1079
    const-string v1, "tipo"

    sget-object v2, Lnat;->APARELHO_NAO_HABILITADO:Lnat;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1080
    iget-object v1, p0, Liqs;->a:Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->startActivity(Landroid/content/Intent;)V

    .line 1087
    :goto_0
    return-void

    .line 1084
    :cond_1
    iget-object v0, p0, Liqs;->a:Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-static {v0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->a(Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;)Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    move-result-object v0

    invoke-static {v0}, Lmyl;->a(Landroid/app/Activity;)V

    goto :goto_0
.end method
