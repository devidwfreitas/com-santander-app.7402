.class public Lkhv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lkhv;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 64
    iput p1, p0, Lkhv;->f:I

    .line 65
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lkhv;->a:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 56
    iput-boolean p1, p0, Lkhv;->e:Z

    .line 57
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lkhv;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 72
    iput p1, p0, Lkhv;->g:I

    .line 73
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lkhv;->b:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lkhv;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lkhv;->c:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lkhv;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lkhv;->d:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lkhv;->e:Z

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lkhv;->f:I

    return v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lkhv;->g:I

    return v0
.end method
