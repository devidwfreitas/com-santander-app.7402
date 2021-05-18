.class public Lkbo;
.super Lgnb;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "return"
.end annotation


# instance fields
.field private dispositivo:Lkbn;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lgnb;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lkbn;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lkbo;->dispositivo:Lkbn;

    return-object v0
.end method

.method public a(Lkbn;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lkbo;->dispositivo:Lkbn;

    .line 30
    return-void
.end method
