.class public final Lezi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lezi;->a:I

    .line 33
    iput p2, p0, Lezi;->b:I

    .line 34
    iput p3, p0, Lezi;->c:I

    .line 35
    iput p4, p0, Lezi;->d:I

    .line 36
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lezi;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lezi;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lezi;->c:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lezi;->d:I

    return v0
.end method
