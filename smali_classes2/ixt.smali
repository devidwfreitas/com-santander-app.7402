.class public Lixt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;)V
    .locals 0

    .prologue
    .line 412
    iput-object p1, p0, Lixt;->a:Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 416
    sget-object v0, Lnaz;->ID_CANCELADO_TELA_51_OU_MODO_CONSULTIVO:Lnaz;

    invoke-virtual {v0}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lixt;->a:Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;

    iget-object v1, v1, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->v:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->y()Lmwy;

    move-result-object v1

    invoke-virtual {v1}, Lmwy;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lnaz;->ATIVACAO_POR_SMS_TELA_44_OU_MODO_CONSULTIVO:Lnaz;

    .line 417
    invoke-virtual {v0}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lixt;->a:Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;

    iget-object v1, v1, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->v:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->y()Lmwy;

    move-result-object v1

    invoke-virtual {v1}, Lmwy;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 418
    :cond_0
    iget-object v0, p0, Lixt;->a:Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;

    invoke-static {v0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->c(Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;)V

    .line 422
    :goto_0
    return-void

    .line 420
    :cond_1
    iget-object v0, p0, Lixt;->a:Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;

    invoke-static {v0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->e(Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;)V

    goto :goto_0
.end method
