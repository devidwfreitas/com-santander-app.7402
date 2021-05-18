.class public Lmfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;

.field private b:I

.field private c:Lmfn;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;)V
    .locals 1

    .prologue
    .line 46
    iput-object p1, p0, Lmfo;->a:Lcom/santander/app/seguros/ui/widgets/liquidindicator/LiquidIndicatorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lmfo;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lmfo;->b:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 55
    iput p1, p0, Lmfo;->b:I

    .line 56
    return-void
.end method

.method public a(Lmfn;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lmfo;->c:Lmfn;

    .line 64
    return-void
.end method

.method public b()Lmfn;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lmfo;->c:Lmfn;

    return-object v0
.end method
