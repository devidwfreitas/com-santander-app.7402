.class public Lfos;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lfot;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Lfos;->a:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lfos;->b:Ljava/lang/String;

    .line 16
    sget-object v0, Lfot;->NORMAL:Lfot;

    iput-object v0, p0, Lfos;->c:Lfot;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lfos;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lfot;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lfos;->c:Lfot;

    .line 53
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lfos;->a:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lfos;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lfos;->b:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public c()Lfot;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lfos;->c:Lfot;

    return-object v0
.end method
