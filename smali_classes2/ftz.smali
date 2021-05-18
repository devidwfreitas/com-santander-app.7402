.class public Lftz;
.super Lfvu;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:J = 0x1L


# instance fields
.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lfvu;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lftz;->c:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lftz;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lftz;->b:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, Lftz;->c:Z

    .line 37
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lftz;->d:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lftz;->c:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lftz;->d:Ljava/lang/String;

    return-object v0
.end method
