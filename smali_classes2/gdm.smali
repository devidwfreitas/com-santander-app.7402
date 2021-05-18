.class Lgdm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lgdl;


# direct methods
.method constructor <init>(Lgdl;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lgdm;->a:Lgdl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 161
    iget-object v0, p0, Lgdm;->a:Lgdl;

    invoke-static {v0}, Lgdl;->a(Lgdl;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 162
    iget-object v0, p0, Lgdm;->a:Lgdl;

    invoke-static {v0}, Lgdl;->b(Lgdl;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lgdm;->a:Lgdl;

    invoke-static {v2}, Lgdl;->b(Lgdl;)Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 163
    return-void
.end method
