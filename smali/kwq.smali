.class public Lkwq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I
    .annotation runtime Leks;
        a = "documentId"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Leks;
        a = "base64File"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Leks;
        a = "base64FileBack"
    .end annotation
.end field

.field private d:Lknw;
    .annotation runtime Leks;
        a = "fileTypeBack"
    .end annotation
.end field

.field private e:Lknw;
    .annotation runtime Leks;
        a = "fileType"
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
.method public a()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lkwq;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 36
    iput p1, p0, Lkwq;->a:I

    .line 37
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lkwq;->b:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public a(Lknw;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lkwq;->e:Lknw;

    .line 53
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lkwq;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lkwq;->c:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public b(Lknw;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lkwq;->d:Lknw;

    .line 69
    return-void
.end method

.method public c()Lknw;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lkwq;->e:Lknw;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lkwq;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lknw;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lkwq;->d:Lknw;

    return-object v0
.end method
