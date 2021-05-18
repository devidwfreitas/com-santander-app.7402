.class public Liyg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Z

.field final synthetic c:Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;Landroid/app/Dialog;Z)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Liyg;->c:Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;

    iput-object p2, p0, Liyg;->a:Landroid/app/Dialog;

    iput-boolean p3, p0, Liyg;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 141
    iget-object v0, p0, Liyg;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 143
    iget-boolean v0, p0, Liyg;->b:Z

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Liyg;->c:Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;

    iget-object v0, v0, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lmir;->e(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Liyg;->c:Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;

    iget-object v0, v0, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmwy;->c(Ljava/lang/Boolean;)V

    .line 147
    iget-object v0, p0, Liyg;->c:Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;

    iget-object v0, v0, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmwy;->b(Ljava/lang/Boolean;)V

    .line 148
    iget-object v0, p0, Liyg;->c:Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;

    iget-object v0, v0, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmwy;->a(Ljava/lang/Boolean;)V

    .line 150
    iget-object v0, p0, Liyg;->c:Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;

    iget-object v0, v0, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    sget-object v1, Lnaz;->HOME_CONSULTIVA:Lnaz;

    invoke-virtual {v1}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmwy;->a(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Liyg;->c:Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Liyg;->c:Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;

    iget-object v2, v2, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->i:Landroid/app/Activity;

    const-class v3, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->startActivity(Landroid/content/Intent;)V

    .line 154
    :cond_0
    return-void
.end method
