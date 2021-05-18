.class Lfea;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# instance fields
.field final synthetic a:Lfdy;


# direct methods
.method constructor <init>(Lfdy;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lfea;->a:Lfdy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lfea;->a:Lfdy;

    invoke-static {v0}, Lfdy;->d(Lfdy;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lfeb;

    invoke-direct {v1, p0}, Lfeb;-><init>(Lfea;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 74
    return-void
.end method
