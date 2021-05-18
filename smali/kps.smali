.class public Lkps;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Leks;
        a = "code"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Leks;
        a = "name"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Leks;
        a = "description"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Leks;
        a = "informative"
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Leks;
        a = "triggeringType"
    .end annotation
.end field

.field private f:Lkol;
    .annotation runtime Leks;
        a = "availability"
    .end annotation
.end field

.field private g:Lkog;
    .annotation runtime Leks;
        a = "assistance"
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
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lkps;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lkps;->a:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lkps;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lkps;->c:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lkps;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lkps;->b:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lkps;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lkps;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()Lkol;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lkps;->f:Lkol;

    return-object v0
.end method

.method public g()Lkog;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lkps;->g:Lkog;

    return-object v0
.end method
