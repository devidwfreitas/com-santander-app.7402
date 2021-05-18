.class public Lta;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lacc;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "property"
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
.method public a()Lacc;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lta;->a:Lacc;

    return-object v0
.end method

.method public a(Lacc;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lta;->a:Lacc;

    .line 24
    return-void
.end method
