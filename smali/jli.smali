.class public Ljli;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljlh;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "result"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "status"
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
.method public a()Ljlh;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Ljli;->a:Ljlh;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Ljli;->b:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public a(Ljlh;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Ljli;->a:Ljlh;

    .line 28
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Ljli;->b:Ljava/lang/String;

    return-object v0
.end method
