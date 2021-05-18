.class public Lbcu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbcd;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lbcx;

.field private final c:Lbao;

.field private final d:Lbbu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbbu",
            "<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lbao;

.field private final f:Lbao;

.field private final g:Lbao;

.field private final h:Lbao;

.field private final i:Lbao;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lbcx;Lbao;Lbbu;Lbao;Lbao;Lbao;Lbao;Lbao;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lbcx;",
            "Lbao;",
            "Lbbu",
            "<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Lbao;",
            "Lbao;",
            "Lbao;",
            "Lbao;",
            "Lbao;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lbcu;->a:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lbcu;->b:Lbcx;

    .line 54
    iput-object p3, p0, Lbcu;->c:Lbao;

    .line 55
    iput-object p4, p0, Lbcu;->d:Lbbu;

    .line 56
    iput-object p5, p0, Lbcu;->e:Lbao;

    .line 57
    iput-object p6, p0, Lbcu;->f:Lbao;

    .line 58
    iput-object p7, p0, Lbcu;->g:Lbao;

    .line 59
    iput-object p8, p0, Lbcu;->h:Lbao;

    .line 60
    iput-object p9, p0, Lbcu;->i:Lbao;

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lbcx;Lbao;Lbbu;Lbao;Lbao;Lbao;Lbao;Lbao;Lbcv;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct/range {p0 .. p9}, Lbcu;-><init>(Ljava/lang/String;Lbcx;Lbao;Lbbu;Lbao;Lbao;Lbao;Lbao;Lbao;)V

    return-void
.end method


# virtual methods
.method public a(Lawu;Lbdy;)Laye;
    .locals 1

    .prologue
    .line 100
    new-instance v0, Layq;

    invoke-direct {v0, p1, p2, p0}, Layq;-><init>(Lawu;Lbdy;Lbcu;)V

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lbcu;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lbcx;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lbcu;->b:Lbcx;

    return-object v0
.end method

.method public c()Lbao;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lbcu;->c:Lbao;

    return-object v0
.end method

.method public d()Lbbu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbbu",
            "<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lbcu;->d:Lbbu;

    return-object v0
.end method

.method public e()Lbao;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lbcu;->e:Lbao;

    return-object v0
.end method

.method public f()Lbao;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lbcu;->f:Lbao;

    return-object v0
.end method

.method public g()Lbao;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lbcu;->g:Lbao;

    return-object v0
.end method

.method public h()Lbao;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lbcu;->h:Lbao;

    return-object v0
.end method

.method public i()Lbao;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lbcu;->i:Lbao;

    return-object v0
.end method
