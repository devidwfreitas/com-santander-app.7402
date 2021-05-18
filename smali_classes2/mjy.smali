.class public Lmjy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;


# direct methods
.method public constructor <init>(Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lmjy;->b:Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;

    iput-object p2, p0, Lmjy;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lmjy;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 309
    iget-object v0, p0, Lmjy;->b:Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;

    invoke-static {v0}, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->c(Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmjy;->b:Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;

    invoke-static {v0}, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->c(Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lmjy;->b:Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;

    invoke-static {v0}, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->c(Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 313
    :cond_0
    iget-object v0, p0, Lmjy;->b:Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;

    iget-object v1, p0, Lmjy;->b:Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;

    iget-object v1, v1, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->i:Landroid/app/Activity;

    invoke-static {v1}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->a(Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 315
    iget-object v0, p0, Lmjy;->b:Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;

    invoke-static {v0}, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->b(Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;)Lmka;

    move-result-object v0

    invoke-interface {v0}, Lmka;->d()V

    .line 316
    return-void
.end method
