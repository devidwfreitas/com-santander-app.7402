.class public Lfns;
.super Lfnt;
.source "SourceFile"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lfnt;-><init>()V

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfns;->a:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/app/Activity;Lfnx;Lfoh;)V
    .locals 0

    .prologue
    .line 29
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x1

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lfns;->a:Z

    return v0
.end method
