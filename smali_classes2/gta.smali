.class public Lgta;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/text/Spanned;

.field private d:Ljava/lang/String;

.field private e:Lgwq;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:I

.field private j:Landroid/graphics/Bitmap;

.field private k:I

.field private l:I

.field private m:Z

.field private n:Z

.field private o:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean v1, p0, Lgta;->h:Z

    .line 31
    iput-boolean v0, p0, Lgta;->m:Z

    .line 32
    iput-boolean v1, p0, Lgta;->n:Z

    .line 33
    iput-boolean v0, p0, Lgta;->o:Z

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lgwq;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean v1, p0, Lgta;->h:Z

    .line 31
    iput-boolean v0, p0, Lgta;->m:Z

    .line 32
    iput-boolean v1, p0, Lgta;->n:Z

    .line 33
    iput-boolean v0, p0, Lgta;->o:Z

    .line 40
    iput-object p1, p0, Lgta;->a:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lgta;->b:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lgta;->d:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lgta;->e:Lgwq;

    .line 44
    iput-object p5, p0, Lgta;->f:Ljava/lang/String;

    .line 45
    iput-object p6, p0, Lgta;->g:Ljava/lang/String;

    .line 46
    iput p7, p0, Lgta;->i:I

    .line 47
    iput p8, p0, Lgta;->k:I

    .line 48
    iput p9, p0, Lgta;->l:I

    .line 49
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 104
    iput p1, p0, Lgta;->i:I

    .line 105
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lgta;->j:Landroid/graphics/Bitmap;

    .line 113
    return-void
.end method

.method public a(Landroid/text/Spanned;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lgta;->c:Landroid/text/Spanned;

    .line 153
    return-void
.end method

.method public a(Lgwq;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lgta;->e:Lgwq;

    .line 89
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lgta;->a:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 56
    iput-boolean p1, p0, Lgta;->n:Z

    .line 57
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lgta;->n:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lgta;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 128
    iput p1, p0, Lgta;->k:I

    .line 129
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lgta;->b:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 144
    iput-boolean p1, p0, Lgta;->m:Z

    .line 145
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lgta;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 136
    iput p1, p0, Lgta;->l:I

    .line 137
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lgta;->d:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 156
    iput-boolean p1, p0, Lgta;->h:Z

    .line 157
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lgta;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lgta;->f:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public d(Z)V
    .locals 0

    .prologue
    .line 168
    iput-boolean p1, p0, Lgta;->o:Z

    .line 169
    return-void
.end method

.method public e()Lgwq;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lgta;->e:Lgwq;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lgta;->g:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lgta;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lgta;->i:I

    return v0
.end method

.method public h()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lgta;->j:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lgta;->g:Ljava/lang/String;

    return-object v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lgta;->k:I

    return v0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lgta;->l:I

    return v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lgta;->m:Z

    return v0
.end method

.method public m()Landroid/text/Spanned;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lgta;->c:Landroid/text/Spanned;

    return-object v0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lgta;->h:Z

    return v0
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lgta;->o:Z

    return v0
.end method
