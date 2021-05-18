.class public Ljlm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljlq;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "agencias"
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
.method public a()Ljlq;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Ljlm;->a:Ljlq;

    return-object v0
.end method

.method public a(Ljlq;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Ljlm;->a:Ljlq;

    .line 25
    return-void
.end method
