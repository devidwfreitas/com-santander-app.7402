.class public Lmcs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[Landroid/text/style/CharacterStyle;

.field private b:I

.field private c:I

.field private d:Z

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>([Landroid/text/style/CharacterStyle;III)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmcs;->d:Z

    .line 20
    invoke-virtual {p0, p1}, Lmcs;->a([Landroid/text/style/CharacterStyle;)V

    .line 21
    invoke-virtual {p0, p2}, Lmcs;->b(I)V

    .line 22
    invoke-virtual {p0, p3}, Lmcs;->c(I)V

    .line 23
    invoke-virtual {p0, p4}, Lmcs;->d(I)V

    .line 24
    return-void
.end method

.method public static a([Landroid/text/style/CharacterStyle;III)Lmcs;
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lmcs;

    invoke-direct {v0, p0, p1, p2, p3}, Lmcs;-><init>([Landroid/text/style/CharacterStyle;III)V

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 44
    iput p1, p0, Lmcs;->e:I

    .line 45
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, Lmcs;->d:Z

    .line 37
    return-void
.end method

.method public a([Landroid/text/style/CharacterStyle;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lmcs;->a:[Landroid/text/style/CharacterStyle;

    .line 53
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lmcs;->d:Z

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lmcs;->e:I

    return v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 60
    iput p1, p0, Lmcs;->b:I

    .line 61
    return-void
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 68
    iput p1, p0, Lmcs;->c:I

    .line 69
    return-void
.end method

.method public c()[Landroid/text/style/CharacterStyle;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lmcs;->a:[Landroid/text/style/CharacterStyle;

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lmcs;->b:I

    return v0
.end method

.method public d(I)V
    .locals 0

    .prologue
    .line 76
    iput p1, p0, Lmcs;->f:I

    .line 77
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lmcs;->c:I

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lmcs;->f:I

    return v0
.end method
