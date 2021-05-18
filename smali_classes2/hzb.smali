.class public Lhzb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/graphics/Bitmap;

.field private d:D

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lhzb;->f:Ljava/lang/String;

    return-object v0
.end method

.method public a(D)V
    .locals 1

    .prologue
    .line 51
    iput-wide p1, p0, Lhzb;->d:D

    .line 52
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lhzb;->c:Landroid/graphics/Bitmap;

    .line 60
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lhzb;->f:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lhzb;->e:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lhzb;->e:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public c()D
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lhzb;->d:D

    return-wide v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lhzb;->a:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public d()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lhzb;->c:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lhzb;->b:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lhzb;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lhzb;->g:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lhzb;->b:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lhzb;->g:Ljava/lang/String;

    return-object v0
.end method
