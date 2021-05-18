.class public Ljlh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljlf;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "geometry"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "place_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljlf;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Ljlh;->a:Ljlf;

    .line 30
    iput-object p2, p0, Ljlh;->b:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public a()Ljlf;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Ljlh;->a:Ljlf;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Ljlh;->b:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public a(Ljlf;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Ljlh;->a:Ljlf;

    .line 39
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Ljlh;->b:Ljava/lang/String;

    return-object v0
.end method
