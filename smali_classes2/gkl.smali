.class public Lgkl;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lfoh;)V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Lgkq;

    invoke-direct {v0}, Lgkq;-><init>()V

    .line 17
    new-instance v1, Lgkm;

    invoke-direct {v1, v0, p0}, Lgkm;-><init>(Lgkq;Lfoh;)V

    invoke-virtual {v0, v1}, Lgkq;->b(Lfoh;)V

    .line 36
    return-void
.end method
