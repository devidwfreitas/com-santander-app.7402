.class public Lfke;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/ParcelamentoTransaccionOkActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/ParcelamentoTransaccionOkActivity;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lfke;->a:Lcom/santander/app/ParcelamentoTransaccionOkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 153
    iget-object v0, p0, Lfke;->a:Lcom/santander/app/ParcelamentoTransaccionOkActivity;

    iget-object v0, v0, Lcom/santander/app/ParcelamentoTransaccionOkActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lfke;->a:Lcom/santander/app/ParcelamentoTransaccionOkActivity;

    iget-object v0, v0, Lcom/santander/app/ParcelamentoTransaccionOkActivity;->v:Lmip;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lmip;->c(Z)V

    .line 155
    iget-object v0, p0, Lfke;->a:Lcom/santander/app/ParcelamentoTransaccionOkActivity;

    invoke-virtual {v0}, Lcom/santander/app/ParcelamentoTransaccionOkActivity;->finishAffinity()V

    .line 156
    iget-object v0, p0, Lfke;->a:Lcom/santander/app/ParcelamentoTransaccionOkActivity;

    iget-object v1, p0, Lfke;->a:Lcom/santander/app/ParcelamentoTransaccionOkActivity;

    invoke-virtual {v0, v1}, Lcom/santander/app/ParcelamentoTransaccionOkActivity;->a(Landroid/content/Context;)Z

    .line 162
    :goto_0
    return-void

    .line 159
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lfke;->a:Lcom/santander/app/ParcelamentoTransaccionOkActivity;

    const-class v2, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 160
    iget-object v1, p0, Lfke;->a:Lcom/santander/app/ParcelamentoTransaccionOkActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/ParcelamentoTransaccionOkActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
