.class public Lhki;
.super Lgnb;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "return"
.end annotation


# instance fields
.field private cetIR:Lhkl;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lgnb;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lhkl;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lhki;->cetIR:Lhkl;

    return-object v0
.end method

.method public a(Lhkl;)V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lhki;->cetIR:Lhkl;

    iput-object v0, p0, Lhki;->cetIR:Lhkl;

    .line 28
    return-void
.end method
