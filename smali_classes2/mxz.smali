.class final Lmxz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Z

.field final synthetic c:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Dialog;ZLandroid/app/Activity;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lmxz;->a:Landroid/app/Dialog;

    iput-boolean p2, p0, Lmxz;->b:Z

    iput-object p3, p0, Lmxz;->c:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 186
    iget-object v0, p0, Lmxz;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 188
    iget-boolean v0, p0, Lmxz;->b:Z

    if-eqz v0, :cond_1

    .line 189
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lmxz;->c:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 190
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 191
    iget-object v1, p0, Lmxz;->c:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    sget-object v0, Lmxn;->b:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 194
    sget-object v0, Lmxn;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
