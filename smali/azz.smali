.class public Lazz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field d:I

.field public e:I

.field f:D

.field public g:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field public h:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field public i:I

.field public j:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIDIIIZ)V
    .locals 0
    .param p8    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p9    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lazz;->a:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lazz;->b:Ljava/lang/String;

    .line 28
    iput p3, p0, Lazz;->c:I

    .line 29
    iput p4, p0, Lazz;->d:I

    .line 30
    iput p5, p0, Lazz;->e:I

    .line 31
    iput-wide p6, p0, Lazz;->f:D

    .line 32
    iput p8, p0, Lazz;->g:I

    .line 33
    iput p9, p0, Lazz;->h:I

    .line 34
    iput p10, p0, Lazz;->i:I

    .line 35
    iput-boolean p11, p0, Lazz;->j:Z

    .line 36
    return-void
.end method


# virtual methods
.method a(Lazz;)V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p1, Lazz;->a:Ljava/lang/String;

    iput-object v0, p0, Lazz;->a:Ljava/lang/String;

    .line 40
    iget-object v0, p1, Lazz;->b:Ljava/lang/String;

    iput-object v0, p0, Lazz;->b:Ljava/lang/String;

    .line 41
    iget v0, p1, Lazz;->c:I

    iput v0, p0, Lazz;->c:I

    .line 42
    iget v0, p1, Lazz;->d:I

    iput v0, p0, Lazz;->d:I

    .line 43
    iget v0, p1, Lazz;->e:I

    iput v0, p0, Lazz;->e:I

    .line 44
    iget-wide v0, p1, Lazz;->f:D

    iput-wide v0, p0, Lazz;->f:D

    .line 45
    iget v0, p1, Lazz;->g:I

    iput v0, p0, Lazz;->g:I

    .line 46
    return-void
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 88
    iget-object v0, p0, Lazz;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 89
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lazz;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 90
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lazz;->c:I

    add-int/2addr v0, v1

    .line 91
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lazz;->d:I

    add-int/2addr v0, v1

    .line 92
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lazz;->e:I

    add-int/2addr v0, v1

    .line 93
    iget-wide v2, p0, Lazz;->f:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 94
    mul-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x20

    ushr-long v4, v2, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 95
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lazz;->g:I

    add-int/2addr v0, v1

    .line 96
    return v0
.end method
