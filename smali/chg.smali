.class public Lchg;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# static fields
.field private static final a:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "Have to create a new drawing set first. Call ChartData\'s createNewDrawingDataSet() method"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 12
    return-void
.end method
