.class public final Lfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 418
    iput-object p1, p0, Lfig;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 421
    iget-object v0, p0, Lfig;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 423
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {}, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 424
    invoke-static {}, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->c()Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->startActivity(Landroid/content/Intent;)V

    .line 425
    return-void
.end method
