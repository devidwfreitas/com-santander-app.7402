.class public Lhzo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "servicos"
.end annotation


# instance fields
.field private servicosModel:Lhzp;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lhzp;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lhzo;->servicosModel:Lhzp;

    return-object v0
.end method

.method public a(Lhzp;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lhzo;->servicosModel:Lhzp;

    .line 27
    return-void
.end method
