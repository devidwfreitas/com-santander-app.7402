.class public Lbrs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/facebook/login/DeviceAuthDialog;


# direct methods
.method public constructor <init>(Lcom/facebook/login/DeviceAuthDialog;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lbrs;->a:Lcom/facebook/login/DeviceAuthDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Lbrs;->a:Lcom/facebook/login/DeviceAuthDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/login/DeviceAuthDialog;->a(Lcom/facebook/login/DeviceAuthDialog;Z)Landroid/view/View;

    move-result-object v0

    .line 350
    iget-object v1, p0, Lbrs;->a:Lcom/facebook/login/DeviceAuthDialog;

    invoke-static {v1}, Lcom/facebook/login/DeviceAuthDialog;->f(Lcom/facebook/login/DeviceAuthDialog;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 351
    iget-object v0, p0, Lbrs;->a:Lcom/facebook/login/DeviceAuthDialog;

    iget-object v1, p0, Lbrs;->a:Lcom/facebook/login/DeviceAuthDialog;

    invoke-static {v1}, Lcom/facebook/login/DeviceAuthDialog;->g(Lcom/facebook/login/DeviceAuthDialog;)Lcom/facebook/login/LoginClient$Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/login/DeviceAuthDialog;->a(Lcom/facebook/login/LoginClient$Request;)V

    .line 352
    return-void
.end method
