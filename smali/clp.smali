.class public abstract Lclp;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method protected a(Landroid/content/Context;Lcms;ZZZ)V
    .locals 8

    .prologue
    .line 24
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lclq;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lclq;-><init>(Lclp;Landroid/content/Context;Lcms;ZZZ)V

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 40
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 41
    return-void
.end method
