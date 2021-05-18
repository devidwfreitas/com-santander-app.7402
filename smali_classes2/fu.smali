.class public Lfu;
.super Lfw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfw",
        "<TTResult;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfd;


# direct methods
.method constructor <init>(Lfd;)V
    .locals 0

    .prologue
    .line 1023
    iput-object p1, p0, Lfu;->a:Lfd;

    invoke-direct {p0}, Lfw;-><init>()V

    .line 1024
    return-void
.end method
