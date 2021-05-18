.class public abstract Lazx;
.super Landroid/os/AsyncTask;
.source "SourceFile"

# interfaces
.implements Lawj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask",
        "<TParams;",
        "Ljava/lang/Void;",
        "Lawr;",
        ">;",
        "Lawj;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lazx;->cancel(Z)Z

    .line 12
    return-void
.end method
