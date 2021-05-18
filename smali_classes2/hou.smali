.class public Lhou;
.super Ljava/io/InvalidObjectException;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "Invalid Request!"

    invoke-direct {p0, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    .line 15
    return-void
.end method
