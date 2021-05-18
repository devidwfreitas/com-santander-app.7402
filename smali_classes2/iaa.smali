.class public Liaa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhzy;


# instance fields
.field private a:Lhzz;

.field private b:Libg;


# direct methods
.method public constructor <init>(Lhzz;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Liaa;->a:Lhzz;

    .line 23
    new-instance v0, Liba;

    invoke-direct {v0}, Liba;-><init>()V

    iput-object v0, p0, Liaa;->b:Libg;

    .line 24
    return-void
.end method

.method static synthetic a(Liaa;)Lhzz;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Liaa;->a:Lhzz;

    return-object v0
.end method


# virtual methods
.method public a(Lhzi;)V
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Liaa;->b:Libg;

    new-instance v1, Liab;

    invoke-direct {v1, p0}, Liab;-><init>(Liaa;)V

    invoke-interface {v0, v1, p1}, Libg;->c(Lgkw;Lgoe;)V

    .line 56
    return-void
.end method
