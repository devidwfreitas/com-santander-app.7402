.class public Lbte;
.super Lbtk;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/facebook/login/widget/DeviceLoginButton;


# direct methods
.method private constructor <init>(Lcom/facebook/login/widget/DeviceLoginButton;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lbte;->a:Lcom/facebook/login/widget/DeviceLoginButton;

    invoke-direct {p0, p1}, Lbtk;-><init>(Lcom/facebook/login/widget/LoginButton;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/login/widget/DeviceLoginButton;Lbtd;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lbte;-><init>(Lcom/facebook/login/widget/DeviceLoginButton;)V

    return-void
.end method


# virtual methods
.method protected a()Lbsp;
    .locals 2

    .prologue
    .line 100
    invoke-static {}, Lbrx;->a()Lbrx;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lbte;->a:Lcom/facebook/login/widget/DeviceLoginButton;

    invoke-virtual {v1}, Lcom/facebook/login/widget/DeviceLoginButton;->i()Lbrn;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbrx;->a(Lbrn;)Lbsp;

    .line 102
    sget-object v1, Lbse;->DEVICE_AUTH:Lbse;

    invoke-virtual {v0, v1}, Lbrx;->a(Lbse;)Lbsp;

    .line 103
    iget-object v1, p0, Lbte;->a:Lcom/facebook/login/widget/DeviceLoginButton;

    invoke-virtual {v1}, Lcom/facebook/login/widget/DeviceLoginButton;->g()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbrx;->a(Landroid/net/Uri;)V

    .line 104
    return-object v0
.end method
