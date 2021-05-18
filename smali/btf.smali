.class public Lbtf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/facebook/login/widget/LoginButton;


# direct methods
.method public constructor <init>(Lcom/facebook/login/widget/LoginButton;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 497
    iput-object p1, p0, Lbtf;->b:Lcom/facebook/login/widget/LoginButton;

    iput-object p2, p0, Lbtf;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 500
    iget-object v0, p0, Lbtf;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbol;->a(Ljava/lang/String;Z)Lboj;

    move-result-object v0

    .line 501
    iget-object v1, p0, Lbtf;->b:Lcom/facebook/login/widget/LoginButton;

    invoke-static {v1}, Lcom/facebook/login/widget/LoginButton;->a(Lcom/facebook/login/widget/LoginButton;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lbtg;

    invoke-direct {v2, p0, v0}, Lbtg;-><init>(Lbtf;Lboj;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 507
    return-void
.end method
