.class public Lhbo;
.super Ljava/lang/Exception;
.source "SourceFile"


# static fields
.field private static final a:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "Invalid response dataHash"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 16
    return-void
.end method
