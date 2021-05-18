.class public Lkso;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lkqy;
    .annotation runtime Leks;
        a = "email"
    .end annotation
.end field

.field private b:Lksh;
    .annotation runtime Leks;
        a = "address"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Leks;
        a = "personType"
    .end annotation
.end field

.field private d:Lksa;
    .annotation runtime Leks;
        a = "telephone"
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Leks;
        a = "segmentCode"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    return-void
.end method

.method public constructor <init>(Lkqy;Lksh;Ljava/lang/String;Lksa;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lkso;->a:Lkqy;

    .line 78
    iput-object p2, p0, Lkso;->b:Lksh;

    .line 79
    iput-object p3, p0, Lkso;->c:Ljava/lang/String;

    .line 80
    iput-object p4, p0, Lkso;->d:Lksa;

    .line 81
    iput-object p5, p0, Lkso;->e:Ljava/lang/String;

    .line 82
    return-void
.end method


# virtual methods
.method public a()Lkqy;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lkso;->a:Lkqy;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lkso;->c:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public a(Lkqy;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lkso;->a:Lkqy;

    .line 34
    return-void
.end method

.method public a(Lksa;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lkso;->d:Lksa;

    .line 64
    return-void
.end method

.method public a(Lksh;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lkso;->b:Lksh;

    .line 44
    return-void
.end method

.method public b()Lksh;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lkso;->b:Lksh;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lkso;->e:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lkso;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lksa;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lkso;->d:Lksa;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lkso;->e:Ljava/lang/String;

    return-object v0
.end method
