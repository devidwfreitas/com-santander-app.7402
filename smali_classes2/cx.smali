.class public Lcx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcw",
        "<",
        "Lcv;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcx;->b()Lcv;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcv;
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcv;

    invoke-direct {v0}, Lcv;-><init>()V

    return-object v0
.end method
