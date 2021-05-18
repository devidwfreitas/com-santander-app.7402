.class public Lkpp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lkpo;

.field private b:Ljava/util/Date;
    .annotation runtime Leks;
        a = "date"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Leks;
        a = "number"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkpo;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lkpp;->a:Lkpo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Date;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lkpp;->b:Ljava/util/Date;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lkpp;->c:Ljava/lang/String;

    return-object v0
.end method
