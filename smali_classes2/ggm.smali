.class public Lggm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lggl;


# instance fields
.field private a:Lgfw;

.field private b:Lger;

.field private c:Lgfg;


# direct methods
.method public constructor <init>(Lgfw;Lger;Lgfg;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lggm;->a:Lgfw;

    .line 22
    iput-object p2, p0, Lggm;->b:Lger;

    .line 23
    iput-object p3, p0, Lggm;->c:Lgfg;

    .line 24
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lggm;->a:Lgfw;

    iget-object v1, p0, Lggm;->b:Lger;

    invoke-interface {v0, v1}, Lgfw;->a(Lger;)V

    .line 29
    return-void
.end method
