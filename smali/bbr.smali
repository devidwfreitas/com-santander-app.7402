.class public Lbbr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Layo;
.implements Lbcd;


# instance fields
.field private final a:Lbba;

.field private final b:Lbbu;
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

.field private final c:Lbbf;

.field private final d:Lbao;

.field private final e:Lbaw;

.field private final f:Lbao;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final g:Lbao;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lbba;Lbbu;Lbbf;Lbao;Lbaw;Lbao;Lbao;)V
    .locals 0
    .param p6    # Lbao;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lbao;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbba;",
            "Lbbu",
            "<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Lbbf;",
            "Lbao;",
            "Lbaw;",
            "Lbao;",
            "Lbao;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lbbr;->a:Lbba;

    .line 38
    iput-object p2, p0, Lbbr;->b:Lbbu;

    .line 39
    iput-object p3, p0, Lbbr;->c:Lbbf;

    .line 40
    iput-object p4, p0, Lbbr;->d:Lbao;

    .line 41
    iput-object p5, p0, Lbbr;->e:Lbaw;

    .line 42
    iput-object p6, p0, Lbbr;->f:Lbao;

    .line 43
    iput-object p7, p0, Lbbr;->g:Lbao;

    .line 44
    return-void
.end method

.method synthetic constructor <init>(Lbba;Lbbu;Lbbf;Lbao;Lbaw;Lbao;Lbao;Lbbs;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p7}, Lbbr;-><init>(Lbba;Lbbu;Lbbf;Lbao;Lbaw;Lbao;Lbao;)V

    return-void
.end method


# virtual methods
.method public a(Lawu;Lbdy;)Laye;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method public a()Lbba;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lbbr;->a:Lbba;

    return-object v0
.end method

.method public b()Lbbu;
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
    .line 51
    iget-object v0, p0, Lbbr;->b:Lbbu;

    return-object v0
.end method

.method public c()Lbbf;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lbbr;->c:Lbbf;

    return-object v0
.end method

.method public d()Lbao;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lbbr;->d:Lbao;

    return-object v0
.end method

.method public e()Lbaw;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lbbr;->e:Lbaw;

    return-object v0
.end method

.method public f()Lbao;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lbbr;->f:Lbao;

    return-object v0
.end method

.method public g()Lbao;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lbbr;->g:Lbao;

    return-object v0
.end method

.method public h()Lazq;
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lazq;

    invoke-direct {v0, p0}, Lazq;-><init>(Lbbr;)V

    return-object v0
.end method
