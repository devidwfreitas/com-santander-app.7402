.class final Lblh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1093
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1097
    invoke-static {}, Lbhv;->h()Landroid/content/Context;

    move-result-object v0

    .line 1096
    invoke-static {v0}, Lblg;->a(Landroid/content/Context;)V

    .line 1098
    return-void
.end method
