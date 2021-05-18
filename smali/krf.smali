.class public Lkrf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Leks;
        a = "codeOperation"
    .end annotation
.end field

.field private b:Lkro;
    .annotation runtime Leks;
        a = "preProposal"
    .end annotation
.end field

.field private c:Lkro;
    .annotation runtime Leks;
        a = "proposal"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lkro;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lkrf;->c:Lkro;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lkrf;->a:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public a(Lkro;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lkrf;->c:Lkro;

    .line 27
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lkrf;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Lkro;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lkrf;->b:Lkro;

    .line 43
    return-void
.end method

.method public c()Lkro;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lkrf;->b:Lkro;

    return-object v0
.end method
