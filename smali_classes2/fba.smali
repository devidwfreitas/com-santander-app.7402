.class public Lfba;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Landroid/view/animation/Interpolator;


# instance fields
.field private a:Lfcb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lfbb;

    invoke-direct {v0}, Lfbb;-><init>()V

    sput-object v0, Lfba;->b:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lfba;)Lfcb;
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lfba;->a:Lfcb;

    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lfba;->a:Lfcb;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lfbc;

    invoke-direct {v0, p0}, Lfbc;-><init>(Lfba;)V

    iput-object v0, p0, Lfba;->a:Lfcb;

    .line 23
    :cond_0
    return-void
.end method


# virtual methods
.method public a(IIII)Lfcb;
    .locals 6

    .prologue
    .line 48
    sget-object v5, Lfba;->b:Landroid/view/animation/Interpolator;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lfba;->a(IIIILandroid/view/animation/Interpolator;)Lfcb;

    move-result-object v0

    return-object v0
.end method

.method public a(IIIIII)Lfcb;
    .locals 8

    .prologue
    .line 28
    sget-object v7, Lfba;->b:Landroid/view/animation/Interpolator;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lfba;->a(IIIIIILandroid/view/animation/Interpolator;)Lfcb;

    move-result-object v0

    return-object v0
.end method

.method public a(IIIIIILandroid/view/animation/Interpolator;)Lfcb;
    .locals 9

    .prologue
    .line 34
    invoke-direct {p0}, Lfba;->a()V

    .line 35
    new-instance v0, Lfbd;

    move-object v1, p0

    move-object/from16 v2, p7

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v0 .. v8}, Lfbd;-><init>(Lfba;Landroid/view/animation/Interpolator;IIIIII)V

    iput-object v0, p0, Lfba;->a:Lfcb;

    .line 43
    iget-object v0, p0, Lfba;->a:Lfcb;

    return-object v0
.end method

.method public a(IIIILandroid/view/animation/Interpolator;)Lfcb;
    .locals 7

    .prologue
    .line 53
    invoke-direct {p0}, Lfba;->a()V

    .line 54
    new-instance v0, Lfbe;

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lfbe;-><init>(Lfba;Landroid/view/animation/Interpolator;IIII)V

    iput-object v0, p0, Lfba;->a:Lfcb;

    .line 62
    iget-object v0, p0, Lfba;->a:Lfcb;

    return-object v0
.end method

.method public a(Lfcb;)Lfcb;
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Lfba;->a()V

    .line 86
    new-instance v0, Lfbg;

    invoke-direct {v0, p0, p1}, Lfbg;-><init>(Lfba;Lfcb;)V

    iput-object v0, p0, Lfba;->a:Lfcb;

    .line 92
    iget-object v0, p0, Lfba;->a:Lfcb;

    return-object v0
.end method

.method public b(IIII)Lfcb;
    .locals 6

    .prologue
    .line 67
    sget-object v5, Lfba;->b:Landroid/view/animation/Interpolator;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lfba;->b(IIIILandroid/view/animation/Interpolator;)Lfcb;

    move-result-object v0

    return-object v0
.end method

.method public b(IIIILandroid/view/animation/Interpolator;)Lfcb;
    .locals 7

    .prologue
    .line 72
    invoke-direct {p0}, Lfba;->a()V

    .line 73
    new-instance v0, Lfbf;

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lfbf;-><init>(Lfba;Landroid/view/animation/Interpolator;IIII)V

    iput-object v0, p0, Lfba;->a:Lfcb;

    .line 81
    iget-object v0, p0, Lfba;->a:Lfcb;

    return-object v0
.end method
