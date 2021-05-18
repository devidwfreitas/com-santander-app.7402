.class public Lktj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lktg;
    .annotation runtime Leks;
        a = "altairMessage"
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lktm;",
            ">;"
        }
    .end annotation

    .annotation runtime Leks;
        a = "requestPreProposal"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lktg;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lktj;->a:Lktg;

    return-object v0
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lktm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    iput-object p1, p0, Lktj;->b:Ljava/util/List;

    .line 40
    return-void
.end method

.method public a(Lktg;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lktj;->a:Lktg;

    .line 30
    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lktm;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lktj;->b:Ljava/util/List;

    return-object v0
.end method
