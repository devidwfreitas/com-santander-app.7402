.class public Ljdu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Ljdu;->b:Z

    .line 24
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Ljdu;->b:Z

    return v0
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 31
    iput-boolean p1, p0, Ljdu;->a:Z

    .line 32
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Ljdu;->a:Z

    return v0
.end method
