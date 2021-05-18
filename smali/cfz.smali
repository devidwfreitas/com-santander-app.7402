.class public Lcfz;
.super Lcfj;
.source "SourceFile"


# instance fields
.field public B:I

.field public C:I

.field public D:I

.field public E:I

.field protected F:F

.field private G:Z

.field private H:Lcga;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 63
    invoke-direct {p0}, Lcfj;-><init>()V

    .line 19
    iput v0, p0, Lcfz;->B:I

    .line 25
    iput v0, p0, Lcfz;->C:I

    .line 31
    iput v0, p0, Lcfz;->D:I

    .line 37
    iput v0, p0, Lcfz;->E:I

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcfz;->F:F

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcfz;->G:Z

    .line 53
    sget-object v0, Lcga;->TOP:Lcga;

    iput-object v0, p0, Lcfz;->H:Lcga;

    .line 65
    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Lclg;->a(F)F

    move-result v0

    iput v0, p0, Lcfz;->x:F

    .line 66
    return-void
.end method


# virtual methods
.method public L()Lcga;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcfz;->H:Lcga;

    return-object v0
.end method

.method public M()F
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcfz;->F:F

    return v0
.end method

.method public N()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcfz;->G:Z

    return v0
.end method

.method public a(Lcga;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcfz;->H:Lcga;

    .line 82
    return-void
.end method

.method public h(Z)V
    .locals 0

    .prologue
    .line 107
    iput-boolean p1, p0, Lcfz;->G:Z

    .line 108
    return-void
.end method

.method public m(F)V
    .locals 0

    .prologue
    .line 97
    iput p1, p0, Lcfz;->F:F

    .line 98
    return-void
.end method
