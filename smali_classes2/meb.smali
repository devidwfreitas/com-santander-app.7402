.class public Lmeb;
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
    .line 22
    const/16 v0, 0x64

    return v0
.end method
