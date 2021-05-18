.class public Lixh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Z

.field final synthetic c:Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;Landroid/app/Dialog;Z)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lixh;->c:Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;

    iput-object p2, p0, Lixh;->a:Landroid/app/Dialog;

    iput-boolean p3, p0, Lixh;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 178
    iget-object v0, p0, Lixh;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 180
    iget-boolean v0, p0, Lixh;->b:Z

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lixh;->c:Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;

    iget-object v0, v0, Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lmir;->e(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lixh;->c:Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;

    iget-object v0, v0, Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmwy;->c(Ljava/lang/Boolean;)V

    .line 184
    iget-object v0, p0, Lixh;->c:Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;

    iget-object v0, v0, Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmwy;->b(Ljava/lang/Boolean;)V

    .line 185
    iget-object v0, p0, Lixh;->c:Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;

    iget-object v0, v0, Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmwy;->a(Ljava/lang/Boolean;)V

    .line 187
    iget-object v0, p0, Lixh;->c:Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;

    iget-object v0, v0, Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    sget-object v1, Lnaz;->HOME_CONSULTIVA:Lnaz;

    invoke-virtual {v1}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmwy;->a(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lixh;->c:Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lixh;->c:Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;

    iget-object v2, v2, Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;->i:Landroid/app/Activity;

    const-class v3, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;->startActivity(Landroid/content/Intent;)V

    .line 191
    :cond_0
    return-void
.end method
