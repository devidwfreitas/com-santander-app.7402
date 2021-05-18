.class public Lmzn;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([Lmzp;Lfoh;)V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lirm;

    invoke-direct {v0}, Lirm;-><init>()V

    .line 28
    new-instance v1, Lmzo;

    invoke-direct {v1, p0, v0, p2}, Lmzo;-><init>(Lmzn;Lirr;Lfoh;)V

    invoke-interface {v0, p1, v1}, Lirr;->a([Lmzp;Lfoh;)V

    .line 35
    return-void
.end method
