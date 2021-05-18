.class public Ljnr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Ljnr;->a:Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 219
    invoke-static {}, Ljor;->d()V

    .line 220
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/santander/app/lojaonline/presentation/LojaOnlineTermsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 221
    iget-object v1, p0, Ljnr;->a:Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;->startActivity(Landroid/content/Intent;)V

    .line 222
    return-void
.end method
