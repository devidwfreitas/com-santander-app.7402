.class public abstract Lhfn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhgb;


# instance fields
.field protected a:Lhfy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(Lhfy;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lhfn;->a:Lhfy;

    .line 31
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method a(Ljava/lang/String;)Landroid/text/Spanned;
    .locals 1

    .prologue
    .line 44
    invoke-static {p1}, Lmyx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-static {v0}, Lmyx;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method a(I)Landroid/text/style/AbsoluteSizeSpan;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lhfn;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method c()Landroid/text/style/AlignmentSpan;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Landroid/text/style/AlignmentSpan$Standard;

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-direct {v0, v1}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    return-object v0
.end method

.method d()Landroid/text/style/AlignmentSpan;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Landroid/text/style/AlignmentSpan$Standard;

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    invoke-direct {v0, v1}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    return-object v0
.end method

.method e()Landroid/text/style/StyleSpan;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    return-object v0
.end method

.method public f()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 66
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 67
    invoke-virtual {p0}, Lhfn;->d()Landroid/text/style/AlignmentSpan;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 68
    invoke-virtual {p0}, Lhfn;->e()Landroid/text/style/StyleSpan;

    move-result-object v2

    aput-object v2, v0, v1

    .line 66
    return-object v0
.end method
