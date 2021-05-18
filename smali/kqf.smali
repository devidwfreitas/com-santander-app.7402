.class public Lkqf;
.super Lkqa;
.source "SourceFile"


# instance fields
.field public a:Z
    .annotation runtime Leks;
        a = "isImageChanged"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lkqa;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .prologue
    .line 24
    iput-boolean p1, p0, Lkqf;->a:Z

    .line 25
    return-void
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lkqf;->a:Z

    return v0
.end method
