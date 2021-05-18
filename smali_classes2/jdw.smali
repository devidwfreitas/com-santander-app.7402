.class public Ljdw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Ljdv;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Ljdw;->a:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public a(Ljdv;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Ljdw;->c:Ljdv;

    .line 45
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 28
    iput-boolean p1, p0, Ljdw;->b:Z

    .line 29
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Ljdw;->b:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Ljdw;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljdv;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Ljdw;->c:Ljdv;

    return-object v0
.end method
