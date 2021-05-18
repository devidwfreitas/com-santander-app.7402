.class public Lcv;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcx;

    invoke-direct {v0}, Lcx;-><init>()V

    invoke-virtual {v0}, Lcx;->b()Lcv;

    move-result-object v0

    return-object v0
.end method
