.class public Lbcf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbcd;


# instance fields
.field private final a:Lbcl;

.field private final b:Landroid/graphics/Path$FillType;

.field private final c:Lbas;

.field private final d:Lbaw;

.field private final e:Lbbc;

.field private final f:Lbbc;

.field private final g:Ljava/lang/String;

.field private final h:Lbao;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final i:Lbao;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Lbcl;Landroid/graphics/Path$FillType;Lbas;Lbaw;Lbbc;Lbbc;Lbao;Lbao;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p2, p0, Lbcf;->a:Lbcl;

    .line 37
    iput-object p3, p0, Lbcf;->b:Landroid/graphics/Path$FillType;

    .line 38
    iput-object p4, p0, Lbcf;->c:Lbas;

    .line 39
    iput-object p5, p0, Lbcf;->d:Lbaw;

    .line 40
    iput-object p6, p0, Lbcf;->e:Lbbc;

    .line 41
    iput-object p7, p0, Lbcf;->f:Lbbc;

    .line 42
    iput-object p1, p0, Lbcf;->g:Ljava/lang/String;

    .line 43
    iput-object p8, p0, Lbcf;->h:Lbao;

    .line 44
    iput-object p9, p0, Lbcf;->i:Lbao;

    .line 45
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lbcl;Landroid/graphics/Path$FillType;Lbas;Lbaw;Lbbc;Lbbc;Lbao;Lbao;Lbcg;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct/range {p0 .. p9}, Lbcf;-><init>(Ljava/lang/String;Lbcl;Landroid/graphics/Path$FillType;Lbas;Lbaw;Lbbc;Lbbc;Lbao;Lbao;)V

    return-void
.end method


# virtual methods
.method public a(Lawu;Lbdy;)Laye;
    .locals 1

    .prologue
    .line 84
    new-instance v0, Layj;

    invoke-direct {v0, p1, p2, p0}, Layj;-><init>(Lawu;Lbdy;Lbcf;)V

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lbcf;->g:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lbcl;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lbcf;->a:Lbcl;

    return-object v0
.end method

.method public c()Landroid/graphics/Path$FillType;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lbcf;->b:Landroid/graphics/Path$FillType;

    return-object v0
.end method

.method public d()Lbas;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lbcf;->c:Lbas;

    return-object v0
.end method

.method public e()Lbaw;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lbcf;->d:Lbaw;

    return-object v0
.end method

.method public f()Lbbc;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lbcf;->e:Lbbc;

    return-object v0
.end method

.method public g()Lbbc;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lbcf;->f:Lbbc;

    return-object v0
.end method

.method h()Lbao;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lbcf;->h:Lbao;

    return-object v0
.end method

.method i()Lbao;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lbcf;->i:Lbao;

    return-object v0
.end method
