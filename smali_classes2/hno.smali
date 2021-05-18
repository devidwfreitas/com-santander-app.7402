.class public Lhno;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Landroid/text/Spanned;

.field private e:Landroid/text/Spanned;

.field private f:Landroid/text/Spanned;

.field private g:Ljava/lang/String;

.field private h:Lhnl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const v0, 0x7f0203aa

    iput v0, p0, Lhno;->b:I

    .line 44
    iput-object p1, p0, Lhno;->a:Landroid/content/Context;

    .line 45
    return-void
.end method

.method public static synthetic a(Lhno;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lhno;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic b(Lhno;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lhno;->b:I

    return v0
.end method

.method public static synthetic c(Lhno;)Landroid/text/Spanned;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lhno;->d:Landroid/text/Spanned;

    return-object v0
.end method

.method public static synthetic d(Lhno;)Landroid/text/Spanned;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lhno;->e:Landroid/text/Spanned;

    return-object v0
.end method

.method public static synthetic e(Lhno;)Landroid/text/Spanned;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lhno;->f:Landroid/text/Spanned;

    return-object v0
.end method

.method static synthetic f(Lhno;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lhno;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic g(Lhno;)Lhnl;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lhno;->h:Lhnl;

    return-object v0
.end method


# virtual methods
.method public a(I)Lhno;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 48
    iput p1, p0, Lhno;->b:I

    .line 49
    return-object p0
.end method

.method public a(Landroid/text/Spanned;)Lhno;
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lhno;->d:Landroid/text/Spanned;

    .line 64
    return-object p0
.end method

.method public a(Lhnl;)Lhno;
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lhno;->h:Lhnl;

    .line 94
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lhno;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lhno;->c:Ljava/lang/String;

    .line 54
    return-object p0
.end method

.method public a()Lhnp;
    .locals 3

    .prologue
    .line 98
    iget-object v0, p0, Lhno;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 101
    :cond_0
    new-instance v0, Lhnp;

    iget-object v1, p0, Lhno;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lhnp;-><init>(Landroid/content/Context;Lhno;Lhnm;)V

    return-object v0
.end method

.method public b(Landroid/text/Spanned;)Lhno;
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lhno;->e:Landroid/text/Spanned;

    .line 74
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lhno;
    .locals 1

    .prologue
    .line 58
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lhno;->d:Landroid/text/Spanned;

    .line 59
    return-object p0
.end method

.method public c(Landroid/text/Spanned;)Lhno;
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lhno;->f:Landroid/text/Spanned;

    .line 84
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lhno;
    .locals 1

    .prologue
    .line 68
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lhno;->e:Landroid/text/Spanned;

    .line 69
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lhno;
    .locals 1

    .prologue
    .line 78
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lhno;->f:Landroid/text/Spanned;

    .line 79
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lhno;
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lhno;->g:Ljava/lang/String;

    .line 89
    return-object p0
.end method
