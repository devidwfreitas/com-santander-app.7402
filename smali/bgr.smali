.class Lbgr;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lbja;
    .locals 2

    .prologue
    .line 137
    new-instance v0, Lbja;

    invoke-static {}, Lbhv;->h()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lbja;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
