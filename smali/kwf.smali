.class public Lkwf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Leks;
        a = "year"
    .end annotation
.end field

.field private b:Lkwg;
    .annotation runtime Leks;
        a = "lob"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Leks;
        a = "code"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Leks;
        a = "sequentialNumber"
    .end annotation
.end field

.field private e:Lkwc;
    .annotation runtime Leks;
        a = "reason"
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
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lkwf;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lkwf;->a:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public a(Lkwc;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lkwf;->e:Lkwc;

    .line 69
    return-void
.end method

.method public a(Lkwg;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lkwf;->b:Lkwg;

    .line 45
    return-void
.end method

.method public b()Lkwg;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lkwf;->b:Lkwg;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lkwf;->c:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lkwf;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lkwf;->d:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lkwf;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lkwc;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lkwf;->e:Lkwc;

    return-object v0
.end method
