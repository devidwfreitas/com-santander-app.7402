.class public Lmdz;
.super Lmec;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item::",
        "Lmdt;",
        ">",
        "Lmec",
        "<TItem;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lmec;-><init>()V

    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    .prologue
    .line 23
    const/16 v0, 0x3e8

    return v0
.end method
