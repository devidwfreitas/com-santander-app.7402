.class public Ligf;
.super Lgnd;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Z
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "updated"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lgnd;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, Ligf;->a:Z

    .line 28
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Ligf;->a:Z

    return v0
.end method
