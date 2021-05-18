.class public Lsv;
.super Labv;
.source "SourceFile"

# interfaces
.implements Labx;


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "bankNumber"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "branchNumber"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "number"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Labv;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lsv;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lsv;->a:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lsv;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lsv;->b:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lsv;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lsv;->c:Ljava/lang/String;

    return-void
.end method

.method public f()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lsv;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lsv;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsv;->a:Ljava/lang/String;

    .line 44
    iget-object v0, p0, Lsv;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lsv;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsv;->b:Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lsv;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lsv;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsv;->c:Ljava/lang/String;

    .line 46
    return-void
.end method
