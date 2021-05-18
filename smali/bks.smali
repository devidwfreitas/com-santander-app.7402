.class final Lbks;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 78
    invoke-static {}, Lbkq;->c()Lbkp;

    move-result-object v0

    invoke-static {v0}, Lbkx;->a(Lbkp;)V

    .line 79
    new-instance v0, Lbkp;

    invoke-direct {v0}, Lbkp;-><init>()V

    invoke-static {v0}, Lbkq;->a(Lbkp;)Lbkp;

    .line 80
    return-void
.end method
