.class public Liec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfoh;


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/santander/app/faturas/activity/FaturasActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/faturas/activity/FaturasActivity;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 494
    iput-object p1, p0, Liec;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    iput-object p2, p0, Liec;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Liec;->b:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->e(Lcom/santander/app/faturas/activity/FaturasActivity;)V

    .line 498
    iget-object v0, p0, Liec;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Liec;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 501
    :cond_0
    return-void
.end method
