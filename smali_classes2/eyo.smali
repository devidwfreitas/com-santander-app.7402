.class final Leyo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I


# direct methods
.method constructor <init>(IIII)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Leyo;->a:I

    .line 32
    iput p4, p0, Leyo;->b:I

    .line 33
    iput p2, p0, Leyo;->c:I

    .line 34
    iput p3, p0, Leyo;->d:I

    .line 35
    add-int v0, p2, p3

    iput v0, p0, Leyo;->e:I

    .line 36
    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Leyo;->a:I

    return v0
.end method

.method b()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Leyo;->b:I

    return v0
.end method

.method c()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Leyo;->e:I

    return v0
.end method

.method d()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Leyo;->c:I

    return v0
.end method

.method e()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Leyo;->d:I

    return v0
.end method
