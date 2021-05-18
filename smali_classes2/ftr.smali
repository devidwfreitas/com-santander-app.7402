.class public Lftr;
.super Lfvu;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final a:J = 0x1L


# instance fields
.field private b:Lftl;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:I

.field private m:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lfvu;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lftl;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lftr;->b:Lftl;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 120
    iput p1, p0, Lftr;->l:I

    .line 121
    return-void
.end method

.method public a(Lftl;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lftr;->b:Lftl;

    .line 40
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lftr;->c:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 55
    iput-boolean p1, p0, Lftr;->d:Z

    .line 56
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lftr;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 128
    iput p1, p0, Lftr;->m:I

    .line 129
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lftr;->e:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 63
    iput-boolean p1, p0, Lftr;->f:Z

    .line 64
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lftr;->g:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lftr;->d:Z

    return v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 134
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lftr;->h:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lftr;->f:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lftr;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lftr;->i:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lftr;->g:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lftr;->j:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lftr;->h:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lftr;->k:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lftr;->i:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lftr;->j:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lftr;->k:Ljava/lang/String;

    return-object v0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lftr;->l:I

    return v0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lftr;->m:I

    return v0
.end method
