.class public Lo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbo;
.implements Ljava/io/Serializable;


# instance fields
.field private a:[B

.field private b:[B

.field private c:[B


# direct methods
.method public constructor <init>([B[B[B)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v0, p0, Lo;->a:[B

    .line 12
    iput-object v0, p0, Lo;->b:[B

    .line 13
    iput-object v0, p0, Lo;->c:[B

    .line 26
    invoke-virtual {p0, p2}, Lo;->b([B)V

    .line 27
    invoke-virtual {p0, p3}, Lo;->a([B)V

    .line 29
    return-void
.end method


# virtual methods
.method public a([B)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lo;->c:[B

    .line 46
    return-void
.end method

.method public a()[B
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lo;->a:[B

    return-object v0
.end method

.method public b([B)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lo;->a:[B

    .line 50
    return-void
.end method

.method public b()[B
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lo;->c:[B

    return-object v0
.end method

.method public c([B)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lo;->b:[B

    return-void
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lo;->a:[B

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lo;->a:[B

    array-length v0, v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 34
    iget-object v0, p0, Lo;->c:[B

    if-eqz v0, :cond_0

    .line 35
    const/4 v0, 0x1

    .line 40
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
