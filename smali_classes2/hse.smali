.class public Lhse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhsd;


# instance fields
.field private a:Lhrc;

.field private b:Lhxq;


# direct methods
.method public constructor <init>(Lhrc;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lhse;->a:Lhrc;

    .line 21
    invoke-static {}, Lhpp;->n()Lhpl;

    move-result-object v0

    invoke-interface {v0}, Lhpl;->h()Lhxq;

    move-result-object v0

    iput-object v0, p0, Lhse;->b:Lhxq;

    .line 22
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lhse;->a:Lhrc;

    invoke-interface {v0}, Lhrc;->a()V

    .line 27
    iget-object v0, p0, Lhse;->a:Lhrc;

    iget-object v1, p0, Lhse;->b:Lhxq;

    invoke-interface {v1}, Lhxq;->getContratos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lhrc;->a(Ljava/util/List;)V

    .line 28
    return-void
.end method
