.class public Lfkc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/ParcelamentoTransaccionErrorActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/ParcelamentoTransaccionErrorActivity;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lfkc;->a:Lcom/santander/app/ParcelamentoTransaccionErrorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 116
    iget-object v0, p0, Lfkc;->a:Lcom/santander/app/ParcelamentoTransaccionErrorActivity;

    iget-object v0, v0, Lcom/santander/app/ParcelamentoTransaccionErrorActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lfkc;->a:Lcom/santander/app/ParcelamentoTransaccionErrorActivity;

    iget-object v0, v0, Lcom/santander/app/ParcelamentoTransaccionErrorActivity;->v:Lmip;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lmip;->c(Z)V

    .line 118
    iget-object v0, p0, Lfkc;->a:Lcom/santander/app/ParcelamentoTransaccionErrorActivity;

    invoke-virtual {v0}, Lcom/santander/app/ParcelamentoTransaccionErrorActivity;->finishAffinity()V

    .line 119
    iget-object v0, p0, Lfkc;->a:Lcom/santander/app/ParcelamentoTransaccionErrorActivity;

    iget-object v1, p0, Lfkc;->a:Lcom/santander/app/ParcelamentoTransaccionErrorActivity;

    invoke-virtual {v0, v1}, Lcom/santander/app/ParcelamentoTransaccionErrorActivity;->a(Landroid/content/Context;)Z

    .line 125
    :goto_0
    return-void

    .line 122
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lfkc;->a:Lcom/santander/app/ParcelamentoTransaccionErrorActivity;

    invoke-static {v1}, Lcom/santander/app/ParcelamentoTransaccionErrorActivity;->a(Lcom/santander/app/ParcelamentoTransaccionErrorActivity;)Lcom/santander/app/ParcelamentoTransaccionErrorActivity;

    move-result-object v1

    const-class v2, Lcom/santander/app/ParcelamentoFacturaActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 123
    iget-object v1, p0, Lfkc;->a:Lcom/santander/app/ParcelamentoTransaccionErrorActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/ParcelamentoTransaccionErrorActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
