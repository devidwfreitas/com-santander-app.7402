.class public Lkti;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lktl;
    .annotation runtime Leks;
        a = "preProposal"
    .end annotation
.end field

.field private b:Lktk;
    .annotation runtime Leks;
        a = "planPayment"
    .end annotation
.end field

.field private c:Lkqg;
    .annotation runtime Leks;
        a = "canvasser"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lktl;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lkti;->a:Lktl;

    return-object v0
.end method

.method public a(Lkqg;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lkti;->c:Lkqg;

    .line 47
    return-void
.end method

.method public a(Lktk;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lkti;->b:Lktk;

    .line 39
    return-void
.end method

.method public a(Lktl;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lkti;->a:Lktl;

    .line 31
    return-void
.end method

.method public b()Lktk;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lkti;->b:Lktk;

    return-object v0
.end method

.method public c()Lkqg;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lkti;->c:Lkqg;

    return-object v0
.end method
