.class public Lkqj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lksa;
    .annotation runtime Leks;
        a = "telephone"
    .end annotation
.end field

.field private b:Lkqy;
    .annotation runtime Leks;
        a = "email"
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
.method public a()Lksa;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lkqj;->a:Lksa;

    return-object v0
.end method

.method public a(Lkqy;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lkqj;->b:Lkqy;

    .line 34
    return-void
.end method

.method public a(Lksa;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lkqj;->a:Lksa;

    .line 26
    return-void
.end method

.method public b()Lkqy;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lkqj;->b:Lkqy;

    return-object v0
.end method
